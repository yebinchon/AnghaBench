
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int node; struct sway_output* output; } ;
struct sway_output {int node; int workspaces; } ;


 int list_add (int ,struct sway_workspace*) ;
 int node_set_dirty (int *) ;
 int workspace_detach (struct sway_workspace*) ;

void output_add_workspace(struct sway_output *output,
  struct sway_workspace *workspace) {
 if (workspace->output) {
  workspace_detach(workspace);
 }
 list_add(output->workspaces, workspace);
 workspace->output = output;
 node_set_dirty(&output->node);
 node_set_dirty(&workspace->node);
}
