# Project Name

dockerfile for running meteor on a ci environment

## Docker pull command

docker pull jbartsch/meteor-chimp

## Usage

```
Usage example:
docker run -it \
--volume=/{pathtoyourapp}:/app \
--workdir="/espconfig"
--memory=4g
--memory-swap=4g
--entrypoint=/bin/bash \
-p 3000:3000 \
-p 3001:3001 \
jbartsch/meteor-chimp-circleci
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History

TODO: Write history

## Credits

TODO: Write credits

## License

 [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0)
