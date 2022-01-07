
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wlr_event_pointer_axis {int orientation; int delta; } ;


 int SWAY_DEBUG ;
 int SWAY_SCROLL_DOWN ;
 int SWAY_SCROLL_LEFT ;
 int SWAY_SCROLL_RIGHT ;
 int SWAY_SCROLL_UP ;


 int sway_log (int ,char*) ;

__attribute__((used)) static uint32_t wl_axis_to_button(struct wlr_event_pointer_axis *event) {
 switch (event->orientation) {
 case 128:
  return event->delta < 0 ? SWAY_SCROLL_UP : SWAY_SCROLL_DOWN;
 case 129:
  return event->delta < 0 ? SWAY_SCROLL_LEFT : SWAY_SCROLL_RIGHT;
 default:
  sway_log(SWAY_DEBUG, "Unknown axis orientation");
  return 0;
 }
}
