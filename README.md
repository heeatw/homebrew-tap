# heeatw/homebrew-tap

Homebrew formulae for [heeatw](https://github.com/heeatw) tools.

```sh
brew trust heeatw/tap       # Homebrew 7+ asks you to trust a third-party tap once
brew install heeatw/tap/cft
```

| Formula | What it is |
|---|---|
| [`cft`](Formula/cft.rb) | [Chrome for Testing per project](https://github.com/heeatw/cft): one browser, one profile and DevTools port per project |

## Updating a formula

Tag a release in the tool's repo, then set `url` to the new tag's archive and `sha256` to its hash:

```sh
curl -sfL -o /tmp/cft.tar.gz https://github.com/heeatw/cft/archive/refs/tags/vX.Y.Z.tar.gz
shasum -a 256 /tmp/cft.tar.gz
brew style Formula/cft.rb && brew audit --strict Formula/cft.rb
```
