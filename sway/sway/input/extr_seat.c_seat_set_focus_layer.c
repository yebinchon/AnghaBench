
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ layer; } ;
struct wlr_layer_surface_v1 {TYPE_1__ current; int surface; int mapped; } ;
struct sway_seat {struct wlr_layer_surface_v1* focused_layer; } ;
struct sway_node {int dummy; } ;
struct TYPE_4__ {int node; } ;


 scalar_t__ ZWLR_LAYER_SHELL_V1_LAYER_TOP ;
 int assert (int ) ;
 TYPE_2__* root ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,int *) ;
 int seat_set_focus (struct sway_seat*,struct sway_node*) ;
 int seat_set_focus_surface (struct sway_seat*,int ,int) ;

void seat_set_focus_layer(struct sway_seat *seat,
  struct wlr_layer_surface_v1 *layer) {
 if (!layer && seat->focused_layer) {
  seat->focused_layer = ((void*)0);
  struct sway_node *previous = seat_get_focus_inactive(seat, &root->node);
  if (previous) {

   seat_set_focus(seat, ((void*)0));
   seat_set_focus(seat, previous);
  }
  return;
 } else if (!layer || seat->focused_layer == layer) {
  return;
 }
 assert(layer->mapped);
 seat_set_focus_surface(seat, layer->surface, 1);
 if (layer->current.layer >= ZWLR_LAYER_SHELL_V1_LAYER_TOP) {
  seat->focused_layer = layer;
 }
}
