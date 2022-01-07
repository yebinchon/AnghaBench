
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int node; struct sway_output* output; } ;
struct sway_output {int node; int workspaces; } ;


 int list_del (int ,int) ;
 int list_find (int ,struct sway_workspace*) ;
 int node_set_dirty (int *) ;

void workspace_detach(struct sway_workspace *workspace) {
 struct sway_output *output = workspace->output;
 int index = list_find(output->workspaces, workspace);
 if (index != -1) {
  list_del(output->workspaces, index);
 }
 workspace->output = ((void*)0);

 node_set_dirty(&workspace->node);
 node_set_dirty(&output->node);
}
