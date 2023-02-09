# React Container
Install nodejs from 
https://nodejs.org/en/download/

If you already used nvm for manage version of nodejs, use this command to install lts version
```sh
nvm install --lts
```

Get dependencies with yarn command
```sh
yarn
```

Start react application
```sh
yarn start
```

Build for deploy on static server
```sh
yarn build
```

### Start Application with Docker

Build image 
```sh
docker build -t react-app .
```

Start container with lasted image builed
```sh
docker run -p 8080:8080 --name webapp -d react-app
```