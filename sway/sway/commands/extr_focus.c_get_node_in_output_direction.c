
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_node {int dummy; } ;
struct sway_workspace {struct sway_node node; TYPE_3__* tiling; int layout; TYPE_2__* fullscreen; } ;
struct sway_seat {int dummy; } ;
struct sway_output {int dummy; } ;
struct sway_container {struct sway_node node; } ;
typedef enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_5__ {struct sway_seat* seat; } ;
struct TYPE_8__ {TYPE_1__ handler_context; } ;
struct TYPE_7__ {scalar_t__ length; struct sway_container** items; } ;
struct TYPE_6__ {int node; } ;


 int L_HORIZ ;
 int L_STACKED ;
 int L_TABBED ;
 int L_VERT ;




 TYPE_4__* config ;
 struct sway_workspace* output_get_active_workspace (struct sway_output*) ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,int *) ;
 struct sway_container* seat_get_focus_inactive_tiling (struct sway_seat*,struct sway_workspace*) ;
 struct sway_container* seat_get_focus_inactive_view (struct sway_seat*,struct sway_node*) ;
 int sway_assert (struct sway_workspace*,char*) ;

__attribute__((used)) static struct sway_node *get_node_in_output_direction(
  struct sway_output *output, enum wlr_direction dir) {
 struct sway_seat *seat = config->handler_context.seat;
 struct sway_workspace *ws = output_get_active_workspace(output);
 if (!sway_assert(ws, "Expected output to have a workspace")) {
  return ((void*)0);
 }
 if (ws->fullscreen) {
  return seat_get_focus_inactive(seat, &ws->fullscreen->node);
 }
 struct sway_container *container = ((void*)0);

 if (ws->tiling->length > 0) {
  switch (dir) {
  case 130:
   if (ws->layout == L_HORIZ || ws->layout == L_TABBED) {

    container = ws->tiling->items[ws->tiling->length-1];
   } else {
    container = seat_get_focus_inactive_tiling(seat, ws);
   }
   break;
  case 129:
   if (ws->layout == L_HORIZ || ws->layout == L_TABBED) {

    container = ws->tiling->items[0];
   } else {
    container = seat_get_focus_inactive_tiling(seat, ws);
   }
   break;
  case 128:
   if (ws->layout == L_VERT || ws->layout == L_STACKED) {

    container = ws->tiling->items[ws->tiling->length-1];
   } else {
    container = seat_get_focus_inactive_tiling(seat, ws);
   }
   break;
  case 131:
   if (ws->layout == L_VERT || ws->layout == L_STACKED) {

    container = ws->tiling->items[0];
   } else {
    container = seat_get_focus_inactive_tiling(seat, ws);
   }
   break;
  }
 }

 if (container) {
  container = seat_get_focus_inactive_view(seat, &container->node);
  return &container->node;
 }

 return &ws->node;
}
