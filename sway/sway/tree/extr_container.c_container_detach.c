
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_workspace {int node; int * fullscreen; } ;
struct sway_container {scalar_t__ fullscreen_mode; int node; struct sway_workspace* workspace; struct sway_container* parent; } ;
typedef int list_t ;
struct TYPE_2__ {int * fullscreen_global; } ;


 scalar_t__ FULLSCREEN_GLOBAL ;
 scalar_t__ FULLSCREEN_WORKSPACE ;
 int container_for_each_child (struct sway_container*,int ,int *) ;
 int * container_get_siblings (struct sway_container*) ;
 int container_update_representation (struct sway_container*) ;
 int list_del (int *,int) ;
 int list_find (int *,struct sway_container*) ;
 int node_set_dirty (int *) ;
 TYPE_1__* root ;
 int set_workspace ;
 int workspace_update_representation (struct sway_workspace*) ;

void container_detach(struct sway_container *child) {
 if (child->fullscreen_mode == FULLSCREEN_WORKSPACE) {
  child->workspace->fullscreen = ((void*)0);
 }
 if (child->fullscreen_mode == FULLSCREEN_GLOBAL) {
  root->fullscreen_global = ((void*)0);
 }

 struct sway_container *old_parent = child->parent;
 struct sway_workspace *old_workspace = child->workspace;
 list_t *siblings = container_get_siblings(child);
 if (siblings) {
  int index = list_find(siblings, child);
  if (index != -1) {
   list_del(siblings, index);
  }
 }
 child->parent = ((void*)0);
 child->workspace = ((void*)0);
 container_for_each_child(child, set_workspace, ((void*)0));

 if (old_parent) {
  container_update_representation(old_parent);
  node_set_dirty(&old_parent->node);
 } else if (old_workspace) {
  workspace_update_representation(old_workspace);
  node_set_dirty(&old_workspace->node);
 }
 node_set_dirty(&child->node);
}
