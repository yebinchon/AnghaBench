
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {scalar_t__ layout; int node; int tiling; } ;
struct sway_container {int node; struct sway_workspace* workspace; } ;


 scalar_t__ L_STACKED ;
 scalar_t__ L_TABBED ;
 int container_detach (struct sway_container*) ;
 int container_for_each_child (struct sway_container*,int ,int *) ;
 int container_handle_fullscreen_reparent (struct sway_container*) ;
 struct sway_container* container_split (struct sway_container*,scalar_t__) ;
 int list_insert (int ,int,struct sway_container*) ;
 int node_set_dirty (int *) ;
 int set_workspace ;
 int workspace_update_representation (struct sway_workspace*) ;

void workspace_insert_tiling(struct sway_workspace *workspace,
  struct sway_container *con, int index) {
 if (con->workspace) {
  container_detach(con);
 }
 if (workspace->layout == L_STACKED || workspace->layout == L_TABBED) {
  con = container_split(con, workspace->layout);
 }
 list_insert(workspace->tiling, index, con);
 con->workspace = workspace;
 container_for_each_child(con, set_workspace, ((void*)0));
 container_handle_fullscreen_reparent(con);
 workspace_update_representation(workspace);
 node_set_dirty(&workspace->node);
 node_set_dirty(&con->node);
}
