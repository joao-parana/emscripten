# emscripten

## Usage

From start every Emscripten command is available. For the instance: emcc, em++, emmake, emar, node, asm2wasm etc.

To compile a single file:

```bash
# compile with docker image
docker run \
  --rm \
  -v $PWD:$PWD \
  -w $PWD \
  -u $(id -u):$(id -g) \
  trzeci/emscripten \
  emcc main.cpp -o main.js
```

```bash
# execute on host machine
node main.js
```

```bash
# execute on Browser
python -m SimpleHTTPServer &
open http://127.0.0.1:8000/main.html 
```

## References

- [https://webassembly.org/docs/modules/](https://webassembly.org/docs/modules/)


