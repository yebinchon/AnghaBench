
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_touch {int dummy; } ;
struct touch_slot {int time; int * output; int y; int x; } ;
struct swaybar_seat {int touch; } ;
typedef int int32_t ;


 int BTN_LEFT ;
 struct touch_slot* get_touch_slot (int *,int ) ;
 int process_hotspots (int *,int ,int ,int ) ;

__attribute__((used)) static void wl_touch_up(void *data, struct wl_touch *wl_touch,
  uint32_t serial, uint32_t time, int32_t id) {
 struct swaybar_seat *seat = data;
 struct touch_slot *slot = get_touch_slot(&seat->touch, id);
 if (!slot) {
  return;
 }
 if (time - slot->time < 500) {

  process_hotspots(slot->output, slot->x, slot->y, BTN_LEFT);
 }
 slot->output = ((void*)0);
}
