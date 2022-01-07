
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_box {int dummy; } ;
struct sway_container {int node; int layout; int children; scalar_t__ view; } ;
struct TYPE_2__ {scalar_t__ reloading; } ;


 int arrange_children (int ,int ,struct wlr_box*) ;
 TYPE_1__* config ;
 int container_get_box (struct sway_container*,struct wlr_box*) ;
 int node_set_dirty (int *) ;
 int view_autoconfigure (scalar_t__) ;

void arrange_container(struct sway_container *container) {
 if (config->reloading) {
  return;
 }
 if (container->view) {
  view_autoconfigure(container->view);
  node_set_dirty(&container->node);
  return;
 }
 struct wlr_box box;
 container_get_box(container, &box);
 arrange_children(container->children, container->layout, &box);
 node_set_dirty(&container->node);
}
