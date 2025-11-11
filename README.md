
# BTRFS-EFI
An EFI filesystem driver that supports rEFInd reliably loading kernels from BTRFS

Trivial changes from upstream, with an existing patch applied.

### How to build / TL;DR

Assumes building on Ubuntu (works fine with `ubuntu:latest` container) since I don't want to clutter my Gentoo system with the build deps or deal with making an ebuild for this.  Merge requests welcome for somebody who wants to give me an ebuild!

1. `apt update`
2. `apt install -y git cmake nodejs gcc-mingw-w64-x86-64`
3. `git clone https://github.com/ScottESanDiego/btrfs-efi`
4. `cd btrfs-efi`
5. `git clone https://github.com/rhboot/gnu-efi.git` # 74bd9b60ba4b59117490ffd54b9fb68bbe91d6b8
6. `cd src`
7. `git clone https://github.com/facebook/zstd.git` # 448cd340879adc0ffe36ed1e26823ee2dcb3217b
8. `git clone https://github.com/madler/zlib.git` # 5a82f71ed1dfc0bec044d9702463dbdf84ea3b71
9. `cd ..`
10. `cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_TOOLCHAIN_FILE=amd64.cmake -B release-work`
11. `cmake --build release-work`
12. `cp release-work/btrfs.efi /efi/blah/blah/btrfs-amd64.efi`


## Original Readme

btrfs-efi
---------

btrfs-efi is a Btrfs filesystem driver for EFI. It is intended for use with the free
Windows bootloader [Quibble](https://github.com/maharmstone/quibble), but you
should be able to use it for anything EFI-related.

Changelog
---------

* 20230328
  * Initial release, split off from the Quibble codebase

Licences and Thanks
-------------------

btrfs-efi contains portions of the following software:

### Zlib

Copyright (C) 1995-2017 Jean-loup Gailly and Mark Adler

This software is provided 'as-is', without any express or implied
warranty.  In no event will the authors be held liable for any damages
arising from the use of this software.

Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it
freely, subject to the following restrictions:

1. The origin of this software must not be misrepresented; you must not
claim that you wrote the original software. If you use this software
in a product, an acknowledgment in the product documentation would be
appreciated but is not required.
2. Altered source versions must be plainly marked as such, and must not be
misrepresented as being the original software.
3. This notice may not be removed or altered from any source distribution.

### LZO

btrfs-efi contains portions of an early version of lzo, which is copyright 1996
Markus Oberhumer. Modern versions are licensed under the GPL, but this was
licensed under the LGPL, so I believe it is okay to use.

### Zstd

Copyright (c) 2016-present, Facebook, Inc. All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

* Neither the name Facebook nor the names of its contributors may be used to
endorse or promote products derived from this software without specific
prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

