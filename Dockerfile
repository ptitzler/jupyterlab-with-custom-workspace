FROM elyra/elyra:2.2.4
WORKDIR /home/jovyan/work
# Copy example notebook
COPY --chown=jovyan Untitled.ipynb .
# Copy custom workspace configuration file
COPY --chown=jovyan lab_workspace.json .
# Patch custom workspace configuration
RUN sed -i -e "s|WORKSPACE_ID|/lab|g" lab_workspace.json
# Import custom workspace 
RUN jupyter lab workspaces import lab_workspace.json
# Remove custom workspace configuration file
RUN rm lab_workspace.json
