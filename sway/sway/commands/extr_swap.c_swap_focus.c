
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_workspace {int dummy; } ;
struct sway_seat {int dummy; } ;
struct sway_container {int node; struct sway_workspace* workspace; } ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_4__ {TYPE_1__* fullscreen_global; } ;
struct TYPE_3__ {int node; } ;


 int L_STACKED ;
 int L_TABBED ;
 int container_parent_layout (struct sway_container*) ;
 TYPE_2__* root ;
 int * seat_get_focus_inactive (struct sway_seat*,int *) ;
 int seat_set_focus (struct sway_seat*,int *) ;
 int seat_set_focus_container (struct sway_seat*,struct sway_container*) ;
 scalar_t__ workspace_is_visible (struct sway_workspace*) ;

__attribute__((used)) static void swap_focus(struct sway_container *con1,
  struct sway_container *con2, struct sway_seat *seat,
  struct sway_container *focus) {
 if (focus == con1 || focus == con2) {
  struct sway_workspace *ws1 = con1->workspace;
  struct sway_workspace *ws2 = con2->workspace;
  enum sway_container_layout layout1 = container_parent_layout(con1);
  enum sway_container_layout layout2 = container_parent_layout(con2);
  if (focus == con1 && (layout2 == L_TABBED || layout2 == L_STACKED)) {
   if (workspace_is_visible(ws2)) {
    seat_set_focus(seat, &con2->node);
   }
   seat_set_focus_container(seat, ws1 != ws2 ? con2 : con1);
  } else if (focus == con2 && (layout1 == L_TABBED
     || layout1 == L_STACKED)) {
   if (workspace_is_visible(ws1)) {
    seat_set_focus(seat, &con1->node);
   }
   seat_set_focus_container(seat, ws1 != ws2 ? con1 : con2);
  } else if (ws1 != ws2) {
   seat_set_focus_container(seat, focus == con1 ? con2 : con1);
  } else {
   seat_set_focus_container(seat, focus);
  }
 } else {
  seat_set_focus_container(seat, focus);
 }

 if (root->fullscreen_global) {
  seat_set_focus(seat,
    seat_get_focus_inactive(seat, &root->fullscreen_global->node));
 }
}
