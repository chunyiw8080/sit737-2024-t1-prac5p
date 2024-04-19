## Deploy the project
Pull all the files in this repo to you local folder and execute the following code
```
docker-compose -f docker-compose.yaml up -d
```

## Explanation

### health check
```
healthcheck:
    test: ["CMD", "curl", "-f", "http://localhost:3040"]  
    interval: 30s  
    timeout: 10s   
    retries: 3     
    start_period: 60s 
```
By executing ``curl - f http://localhost:3040`` Check if the service is available. The interval between each check is 30 seconds. If no feedback is received within 10 seconds, it is considered a check failure. 
When all three retries fail, the service is determined to be unavailable.
Starting health check after 60 seconds of container running.

### Subnet
```
networks:
  app:
    ipam:
      config:
        - subnet: 172.31.0.0/24

```
Subnet is configured for the container

## Usage
The service implements some basic calculation methods, including addition, subtraction, multiplication, division, open roots, exponentiation, and modulo operations
### Addition, subtraction, multiplication, division
curl 'http://172.31.0.2:3040/add?n1=2&n2=3'

curl 'http://172.31.0.2:3040/minus?n1=3&n2=3'

curl 'http://172.31.0.2:3040/multiply?n1=2&n2=3'

curl 'http://172.31.0.2:3040/divide?n1=4&n2=2'

### Square Root
curl 'http://172.31.0.2:3040/sqrt/8'

### Exponentiation 
curl 'http://172.31.0.2:3040/power?n1=4&n2=2'

### Modulo
curl 'http://172.31.0.2:3040/modulo?n1=4&n2=2'
