
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_box {int dummy; } ;
struct sway_workspace {scalar_t__ fullscreen; } ;
struct sway_seat {int dummy; } ;
struct sway_container {int x; int width; int y; int height; int node; struct sway_workspace* workspace; } ;
struct TYPE_2__ {scalar_t__ fullscreen_global; } ;


 int SWAY_DEBUG ;
 int arrange_workspace (struct sway_workspace*) ;
 int container_detach (struct sway_container*) ;
 int container_floating_resize_and_center (struct sway_container*) ;
 int container_fullscreen_disable (scalar_t__) ;
 struct sway_seat* input_manager_current_seat () ;
 TYPE_1__* root ;
 int seat_get_focus_inactive (struct sway_seat*,int *) ;
 struct sway_workspace* seat_get_focused_workspace (struct sway_seat*) ;
 int seat_set_focus (struct sway_seat*,int ) ;
 int sway_log (int ,char*) ;
 int wlr_box_contains_point (struct wlr_box*,double,double) ;
 int workspace_add_floating (struct sway_workspace*,struct sway_container*) ;
 int workspace_get_box (struct sway_workspace*,struct wlr_box*) ;

void root_scratchpad_show(struct sway_container *con) {
 struct sway_seat *seat = input_manager_current_seat();
 struct sway_workspace *new_ws = seat_get_focused_workspace(seat);
 if (!new_ws) {
  sway_log(SWAY_DEBUG, "No focused workspace to show scratchpad on");
  return;
 }
 struct sway_workspace *old_ws = con->workspace;



 if (new_ws->fullscreen) {
  container_fullscreen_disable(new_ws->fullscreen);
 }
 if (root->fullscreen_global) {
  container_fullscreen_disable(root->fullscreen_global);
 }


 if (old_ws) {
  container_detach(con);
 }
 workspace_add_floating(new_ws, con);


 double center_lx = con->x + con->width / 2;
 double center_ly = con->y + con->height / 2;

 struct wlr_box workspace_box;
 workspace_get_box(new_ws, &workspace_box);
 if (!wlr_box_contains_point(&workspace_box, center_lx, center_ly)) {
  container_floating_resize_and_center(con);
 }

 arrange_workspace(new_ws);
 seat_set_focus(seat, seat_get_focus_inactive(seat, &con->node));
}
