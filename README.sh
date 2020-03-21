# emscripten

> An adventure with WebAssembly

## Usage

From start every Emscripten command is available. For the instance: emcc, em++, emmake, emar, node, asm2wasm etc.

To compile a single file:

```bash
docker run --rm -v $PWD:$PWD -w $PWD \
       trzeci/emscripten \
       emcc helloworld.cpp -o helloworld.js
```

Hello World on console:

```bash
# create helloworld.cpp
cat << EOF > helloworld.cpp
#include <iostream>
int main() {
  std::cout << "Hello World!" << std::endl;
  return 0;
}
EOF
```

```bash
# compile with docker image
docker run \
  --rm \
  -v $PWD:$PWD \
  -w $PWD \
  -u $(id -u):$(id -g) \
  trzeci/emscripten \
  emcc helloworld.cpp -o helloworld.js
```

```bash
# execute on host machine
node helloworld.js
```

```bash
# execute on Browser
python -m SimpleHTTPServer &
open http://127.0.0.1:8000/helloworld.html 
```

