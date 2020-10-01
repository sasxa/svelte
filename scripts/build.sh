sh scripts/clean.sh
mkdir -p dist/
cp src/public/* dist/

rollup -c
