Scratch Open File
=====


scratchコンテナで動作するファイル読み込みを行うサンプル
no_std環境でmmapシステムコールを直接呼び出してみる


なぜかreleaseビルドじゃないとうまく動作しない


- ビルドと実行
```sh
docker build -t dev.local/scratch-openfile:latest .
docker run dev.local/scratch-openfile
```

参考
-----
- [low-level-programming](https://github.com/Apress/low-level-programming/blob/master/listings/chap4/mmap/mmap.asm)
- [Man page of OPEN](https://linuxjm.osdn.jp/html/LDP_man-pages/man2/open.2.html)

