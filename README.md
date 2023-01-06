# FlyToSocial

An attempt to run a [GoToSocial](https://github.com/superseriousbusiness/gotosocial) instance at [fly.io](https://fly.io).

> Testing has been held off due to concerns about surprise bills.
>
> Please let me know if there are running problems!

## Caution

- fly.io requires a credit card or a minimum of US$25 credit limit.
- FlyToSocial (this repo) expects to use up the free credit completely, but you can adjust it yourself
- I have modified the configuration for personal instance, again you can adjust it yourself
- Object storage is required for storing media files. I recommend looking at [ripienaar/free-for-dev#IaaS](https://github.com/ripienaar/free-for-dev#iaas)

## Usage

> Incomplete

```bash
# clone repo
git clone https://github.com/kwaa/flytosocial.git
cd flytosocial

# deploy
fly deploy

# volumes
fly volumes create flytosocial_vol -r <region-1> --size 1
fly volumes create flytosocial_vol -r <region-2> --size 1
fly volumes create flytosocial_vol -r <region-3> --size 1

# scale
fly scale count 3

# secrets
fly secrets set GTS_HOST=<your-domain>
fly secrets set GTS_STORAGE_S3_ENDPOINT=<your-s3-endpoint>
fly secrets set GTS_STORAGE_S3_ACCESS_KEY=<your-s3-username>
fly secrets set GTS_STORAGE_S3_SECRET_KEY=<your-s3-password>
fly secrets set GTS_STORAGE_S3_BUCKET=<your-s3-bucket>
```

## Useful links

- [badboy/gotosocial-fly](https://github.com/badboy/gotosocial-fly)
  - [`fly.toml`](fly.toml) is referenced from this repository. thanks!
- [superseriousbusiness/gotosocial/Dockerfile](https://github.com/superseriousbusiness/gotosocial/blob/main/Dockerfile)
- [LiteFS Config Reference](https://fly.io/docs/litefs/config/)
- [Laravel: Global SQLite with LiteFS](https://fly.io/docs/laravel/advanced-guides/global-sqlite-litefs/)
