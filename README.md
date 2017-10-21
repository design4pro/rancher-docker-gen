## Rancher Docker Gen

Fork from [janeczku/go-rancher-gen](https://github.com/janeczku/go-rancher-gen) 

This fork is used to build [design4pro/rancher-nginx-proxy](https://github.com/design4pro/rancher-active-proxy).

This repo is auto build on push: [rancher-docker-gen](https://gitlab.com/design4.pro/rancher-docker-gen/builds/artifacts/master/download?job=compile-go)

This repo is build using Go 1.7 to enable nicer templates!

Original Readme give most information but those functions have also been added:

### `exist`

Check if a file exist.

### `groupByMulti`

Same function as default groupby but split label by `sep` in order to allow multiple input value in one label.

### `dict`

Function from jwilder/dockergen: simple way to send multiple value to a template.

### `trimSuffix`

Original Go strings.TrimSuffix function => get ride of the suffix.

### `closest`

Function from jwilder/dockergen: get the best matching value from an array.

### `first`

Function from jwilder/dockergen: get the first value from an array.

### `coalesce`

Function from jwilder/dockergen: return first non nil value.

### `trim`

Original Go strings.TrimSpace function

### `dirList`

Function from jwilder/dockergen: list files from a directory.

### Update Port struct and Host struct (to get the external ip containers are listening on ans standalone containers)

```
type Port struct {
    ExternalIp   string
	PublicPort   string
	InternalPort string
	Protocol     string
}

type Host struct {
	UUID        string
	Name        string
	Address     string
	Hostname    string
	Labels      LabelMap
	Containers  []Container
}

type Container struct {
	Name    string
	Address string
	Stack   string
	Service string
	Health  string
	State   string
	Labels  LabelMap
	Host    Host
	Ports   []ServicePort
}
```
