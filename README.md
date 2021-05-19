# jupyterlab-with-custom-workspace


## Build the container image

1. Run

   ```
   $ docker build -t test .
   ```

## Run the container image

1. Run

   ```
   $ docker run -it -p 8888:8888 test jupyter lab
   ```

1. Take note of the access token.

## Access custom JupyterLab workspace

1. Open `http://127.0.0.1:8888/lab/workspaces/lab/`
1. Enter the access token 

## Create your own custom workspace

1. Customize the workspace in the running container as desired
1. Get container id.

   ```
   $ docker ps
   ```

1. Access the running container.

   ```
   $ docker exec -it <id> /bin/bash
   ```

1. In the running container navigate to the workspace directory.

   ```
   cd /home/jovyan/.jupyter/lab/workspaces/
   ```

1. Copy the content of the desired `.jupyterlab-workspace` file into the `lab_workspace.json` file on your machine. 

1. Edit the `lab_workspace.json` file on your machine, replacing

   ```
   "metadata":{"id":"default"}
   ```
   with

   ```
   "metadata":{"id":"WORKSPACE_ID"}
   ```

1. Repeat the steps to build/run the container image.   