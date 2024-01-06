# Egyptological LaTeX Docker Image
## Resume
The LaTeX_Dockerize repo lets you use LaTeX to write documents that may contain UNICODE transliteration characters, such as those used for ancient Egyptian, and use the Times New Roman font by default.

The Dockerfile is established on the latest alpine image and installs texlive-full and msttcorefonts-installer by default.

Using this image overcomes any LaTeX dependency or compilation problems.

## Build Docker Image
```bash
sudo docker build -t  DOCKER_IMAGE .
```
where DOCKER_IMAGE is the name of docker image will be created.
## Run Docker
Run command line bellow:
```bash
docker run -i --rm --name latex -v "$PWD":/usr/src/app -w /usr/src/app latex LATEX_ENGINE FILE.tex
```
where LATEX_ENGINE is the latex engine use to compile FILE.tex and declared twice in FILE.tex with 
```tex
% arara: LATEX_ENGINE
% arara: LATEX_ENGINE 
```

## LaTeX Template
The template in the src folder supports the default Times New Roman font, while also implementing UNICODE support for transliteration of ancient Egyptian.
