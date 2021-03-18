# toolbox

```
docker build . -t toolbox
docker exec -ti fc98 /bin/bash
```
Use in Kubernetes

```
kubectl run toolbox --rm -i --tty --image jacqueline/toolbox:latest -- /bin/bash
```


Helm chart

