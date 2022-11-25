❗ Kubo is not distributed through Chocolatey anymore (https://github.com/ipfs/kubo/issues/9341).
Please download Kubo from https://dist.ipfs.tech/#kubo.

# choco-go-ipfs

[![](https://img.shields.io/badge/made%20by-Protocol%20Labs-blue.svg?style=flat-square)](https://protocol.ai)
[![](https://img.shields.io/badge/project-IPFS-blue.svg?style=flat-square)](https://ipfs.io/)

> automatically publish Kubo (go-ipfs) releases to Chocolatey for MS Windows

## Table of Contents

- [Usage](#usage)
- [Contribute](#contributing)
- [License](#license)


## Usage

This repo does everything automatically.

The Github Action runs periodically and detects a new `go-ipfs` version at
https://dist.ipfs.tech and publishes a new chocolatey package with it.

## Contributing

Contributions are welcome! This repository is part of the IPFS project and therefore governed by our [contributing guidelines](https://github.com/ipfs/community/blob/master/CONTRIBUTING.md).

## License

[SPDX-License-Identifier: Apache-2.0 OR MIT](LICENSE.md)
