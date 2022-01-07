
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {scalar_t__ fullscreen_mode; int node; scalar_t__ workspace; struct sway_container* parent; int children; } ;


 scalar_t__ FULLSCREEN_NONE ;
 int container_detach (struct sway_container*) ;
 int container_for_each_child (struct sway_container*,int (*) (struct sway_container*,int*),int*) ;
 int container_handle_fullscreen_reparent (struct sway_container*) ;
 int container_update_representation (struct sway_container*) ;
 int list_add (int ,struct sway_container*) ;
 int node_set_dirty (int *) ;
 int set_fullscreen_iterator (struct sway_container*,int*) ;
 int set_workspace (struct sway_container*,int*) ;

void container_add_child(struct sway_container *parent,
  struct sway_container *child) {
 if (child->workspace) {
  container_detach(child);
 }
 list_add(parent->children, child);
 child->parent = parent;
 child->workspace = parent->workspace;
 container_for_each_child(child, set_workspace, ((void*)0));
 bool fullscreen = child->fullscreen_mode != FULLSCREEN_NONE ||
  parent->fullscreen_mode != FULLSCREEN_NONE;
 set_fullscreen_iterator(child, &fullscreen);
 container_for_each_child(child, set_fullscreen_iterator, &fullscreen);
 container_handle_fullscreen_reparent(child);
 container_update_representation(parent);
 node_set_dirty(&child->node);
 node_set_dirty(&parent->node);
}
