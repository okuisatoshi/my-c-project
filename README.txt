ソースファイルが1つの簡単なC言語プロジェクトのためのMakefileです。

### 使い方

(1) このプロジェクトのひな型をダウンロードします。
```
git clone https://github.com/okuisatoshi/my-c-project.git
```
`my-c-project`ディレクトリができるのでその中に移動します。
ディレクトリ名は適宜変更してください。

(2) C言語のソースファイルを用意します。(例:`hello.c`)

(3) makeします。

```
make hello    # helloのところはソースファイルの名前の.cを取り除いたもの
```
hello.cが.build/helloにコンパイルされます。
コンパイルに成功すると続けて./.build/helloが実行されます。

### その他

(1) 数学関数のライブラリ`libm`等、外部のライブラリを使用しているときには、
これをリンクするオプションを明示的に渡さなければならない場合があります。
例えば、もし
```
make hello_math
```
に失敗するときは
```
make LDFLAGS=-lm hello_math
```
のようにリンカーのオプションを指定してください。

(2) `make clean`で.build以下のファイルを削除します。

(3) 既定で`cc`コマンドで実行されるCコンパイラを使います。
使いたいコンパイラを明示的に指定するには`CC`を用いてください。
```
make CC=gcc hello     # gccコンパイラを使用
```
```
make CC=clang hello   # clangコンパイラを使用
```

(4) Cコンパイラがない環境ではCコンパイラをダウンロードできます(x86_64環境のみ)。
```
make zig-install
```
でダウンロードしたあと`Makefile`の1行目のシャープ(#)を消してください。
以下を実行すればＯＫです。
```
sed -i '1s/^#CC/CC/' Makefile
```

もとに戻すには再び#をつけてください。
以下を実行すればOKです。
```
sed -i '1s/^CC/#CC/' Makefile
```


