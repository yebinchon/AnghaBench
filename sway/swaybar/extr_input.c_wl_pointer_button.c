
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_pointer {int dummy; } ;
struct swaybar_pointer {int y; int x; struct swaybar_output* current; } ;
struct swaybar_seat {int bar; struct swaybar_pointer pointer; } ;
struct swaybar_output {int dummy; } ;


 int WL_POINTER_BUTTON_STATE_PRESSED ;
 scalar_t__ check_bindings (int ,int ,int ) ;
 int process_hotspots (struct swaybar_output*,int ,int ,int ) ;
 int sway_assert (struct swaybar_output*,char*) ;

__attribute__((used)) static void wl_pointer_button(void *data, struct wl_pointer *wl_pointer,
  uint32_t serial, uint32_t time, uint32_t button, uint32_t state) {
 struct swaybar_seat *seat = data;
 struct swaybar_pointer *pointer = &seat->pointer;
 struct swaybar_output *output = pointer->current;
 if (!sway_assert(output, "button with no active output")) {
  return;
 }

 if (check_bindings(seat->bar, button, state)) {
  return;
 }

 if (state != WL_POINTER_BUTTON_STATE_PRESSED) {
  return;
 }
 process_hotspots(output, pointer->x, pointer->y, button);
}
