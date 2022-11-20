

```
docker build -t ansiblehelm .
docker run --net=host -v $HOME/.kube:/home/semaphore/.kube ansiblehelm
```
