# danger-swift

To update run

```bash
$ scripts/update-dockerfile.sh
```

Check to see if SwiftLint version in Dockerfile is the latest https://github.com/realm/SwiftLint

Build image

```bash
$ docker build . -t xogroup/danger-swift:VERSION
```

where `VERSION` is the latest release of https://github.com/danger/swift

Push to DockerHub

```bash
docker push xogroup/danger-swift:VERSION
```