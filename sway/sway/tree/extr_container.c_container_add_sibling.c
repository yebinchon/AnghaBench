
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {scalar_t__ workspace; int parent; } ;
typedef int list_t ;


 int container_detach (struct sway_container*) ;
 int container_for_each_child (struct sway_container*,int ,int *) ;
 int * container_get_siblings (struct sway_container*) ;
 int container_handle_fullscreen_reparent (struct sway_container*) ;
 int container_update_representation (struct sway_container*) ;
 int list_find (int *,struct sway_container*) ;
 int list_insert (int *,int,struct sway_container*) ;
 int set_workspace ;

void container_add_sibling(struct sway_container *fixed,
  struct sway_container *active, bool after) {
 if (active->workspace) {
  container_detach(active);
 }
 list_t *siblings = container_get_siblings(fixed);
 int index = list_find(siblings, fixed);
 list_insert(siblings, index + after, active);
 active->parent = fixed->parent;
 active->workspace = fixed->workspace;
 container_for_each_child(active, set_workspace, ((void*)0));
 container_handle_fullscreen_reparent(active);
 container_update_representation(active);
}
