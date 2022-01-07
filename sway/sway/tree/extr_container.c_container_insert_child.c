
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {scalar_t__ workspace; struct sway_container* parent; int children; } ;


 int container_detach (struct sway_container*) ;
 int container_for_each_child (struct sway_container*,int ,int *) ;
 int container_handle_fullscreen_reparent (struct sway_container*) ;
 int container_update_representation (struct sway_container*) ;
 int list_insert (int ,int,struct sway_container*) ;
 int set_workspace ;

void container_insert_child(struct sway_container *parent,
  struct sway_container *child, int i) {
 if (child->workspace) {
  container_detach(child);
 }
 list_insert(parent->children, i, child);
 child->parent = parent;
 child->workspace = parent->workspace;
 container_for_each_child(child, set_workspace, ((void*)0));
 container_handle_fullscreen_reparent(child);
 container_update_representation(parent);
}
