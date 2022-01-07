
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_workspace {int dummy; } ;
struct sway_view {TYPE_1__* container; } ;
struct sway_seat {int dummy; } ;
struct TYPE_4__ {int focus_on_window_activation; } ;
struct TYPE_3__ {struct sway_workspace* workspace; } ;






 TYPE_2__* config ;
 struct sway_seat* input_manager_current_seat () ;
 int seat_set_focus_container (struct sway_seat*,TYPE_1__*) ;
 int view_set_urgent (struct sway_view*,int) ;
 int workspace_is_visible (struct sway_workspace*) ;

void view_request_activate(struct sway_view *view) {
 struct sway_workspace *ws = view->container->workspace;
 if (!ws) {
  return;
 }
 struct sway_seat *seat = input_manager_current_seat();

 switch (config->focus_on_window_activation) {
 case 129:
  if (workspace_is_visible(ws)) {
   seat_set_focus_container(seat, view->container);
  } else {
   view_set_urgent(view, 1);
  }
  break;
 case 128:
  view_set_urgent(view, 1);
  break;
 case 131:
  seat_set_focus_container(seat, view->container);
  break;
 case 130:
  break;
 }
}
