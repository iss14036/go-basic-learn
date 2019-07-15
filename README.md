# REST basic API on Go

## Problem Statement
Just some CRUD on Golang and implementing REST with gorilla mux library. For further documentation you can open [here](https://tutorialedge.net/golang/creating-restful-api-with-golang/)

## Dependencies
In this time, I use mac as an os to running the system.

#### 1. Golang
First of all export some paths, and save them in your `.zshrc` or `.bashrc` files for easy use. Use sudo if you get error.

```
# Go development
```

```
export GOPATH="${HOME}/.go"
```

```
export GOROOT="$(brew --prefix golang)/libexec"
```

```
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
```

```
test -d "${GOPATH}" || mkdir "${GOPATH}"
```

And then, you can install the Go
```
brew install go

```

## How to use
You can run the program by running this command at terminal :
```
go run main.go
```

## List of End point

- Home Page `localhost:10000` with `GET` method
- Return all articles `localhost:10000/all` with `GET` method
- Return single article `localhost:10000/article/{id}` with `GET` method
- Create new article `localhost:10000/article` with `POST` method 
This is the example body :
```
{
    "Id": "3", 
    "Title": "Newly Created Post", 
    "desc": "The description for my new post", 
    "content": "my articles content" 
}
```
- Delete an article `localhost:10000/article/{id}` with `DELETE` method
