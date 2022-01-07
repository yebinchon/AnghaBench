
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_surface {int dummy; } ;
struct sway_node {struct sway_container* sway_container; } ;
struct sway_container {int dummy; } ;







 struct sway_container* container_at_linear (struct sway_node*,double,double,struct wlr_surface**,double*,double*) ;
 struct sway_container* container_at_stacked (struct sway_node*,double,double,struct wlr_surface**,double*,double*) ;
 struct sway_container* container_at_tabbed (struct sway_node*,double,double,struct wlr_surface**,double*,double*) ;
 int node_get_children (struct sway_node*) ;
 int node_get_layout (struct sway_node*) ;
 scalar_t__ node_is_view (struct sway_node*) ;
 int surface_at_view (struct sway_container*,double,double,struct wlr_surface**,double*,double*) ;

struct sway_container *tiling_container_at(struct sway_node *parent,
  double lx, double ly,
  struct wlr_surface **surface, double *sx, double *sy) {
 if (node_is_view(parent)) {
  surface_at_view(parent->sway_container, lx, ly, surface, sx, sy);
  return parent->sway_container;
 }
 if (!node_get_children(parent)) {
  return ((void*)0);
 }
 switch (node_get_layout(parent)) {
 case 132:
 case 128:
  return container_at_linear(parent, lx, ly, surface, sx, sy);
 case 129:
  return container_at_tabbed(parent, lx, ly, surface, sx, sy);
 case 130:
  return container_at_stacked(parent, lx, ly, surface, sx, sy);
 case 131:
  return ((void*)0);
 }
 return ((void*)0);
}
