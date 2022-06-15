# docker-actions-demo
Build a Docker image with GitHub actions

## Pre-requisites

* Create your GitHub account
* Create your Docker Hub account

## Steps

### 1. Fork this repo
Click the 'Fork' button at the right corner of the screen and confirm by clicking 'Create Fork'.
This will create a new repo in your account with the content of this one.

### 2. Create a Docker Hub repo

Log in to Docker Hub in your browser and hit 'Create repository'. Name the repo 'actions-demo', then click 'Create'.

> Make sure you keep this repo as public.

### 3. Add your Docker Hub credentials to GitHub Secrets

> You should have your Docker Hub username and password.

* In your forked repo, click the 'Settings' tab at the top.
* Under 'security', you'll see the 'Secrets' section, expand it and hit 'Actions'
* Create two new repository secrets by clicking the 'New repository secret' button:
  * name one as `DOCKER_USERNAME` and assign its value to your Docker Hub username (not your email);
  * name the other as `DOCKER_PASSWORD` and assign its value to your Docker Hub password.

### 4. Customize the image and publish it to your Docker Hub account

This repo has a GitHub action configured so every time you push a new commit to the `main` branch, an image is pushed to your Docker Hub 'actions-demo' repo.
To make sure it works, 
* in your browser go to the [app.py file of this repo](https://github.com/AlanKev117/docker-actions-demo/blob/main/app.py)
* click on the pencil icon to edit the file
* change the values of the vars `name` and `os` with your name and the os you are using, respectively.
* click on the green button at the bottom, 'Commit changes'
* go to the 'Actions' tab, you should see an action being triggered and successfully completed.
