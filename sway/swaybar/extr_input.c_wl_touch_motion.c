
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_touch {int dummy; } ;
struct touch_slot {int x; int start_x; TYPE_1__* output; void* y; } ;
struct swaybar_seat {int bar; int touch; } ;
typedef int int32_t ;
struct TYPE_2__ {int width; } ;


 int abs (int) ;
 struct touch_slot* get_touch_slot (int *,int ) ;
 void* wl_fixed_to_double (int ) ;
 int workspace_next (int ,TYPE_1__*,int) ;

__attribute__((used)) static void wl_touch_motion(void *data, struct wl_touch *wl_touch,
  uint32_t time, int32_t id, wl_fixed_t x, wl_fixed_t y) {
 struct swaybar_seat *seat = data;
 struct touch_slot *slot = get_touch_slot(&seat->touch, id);
 if (!slot) {
  return;
 }
 int prev_progress = (int)((slot->x - slot->start_x)
   / slot->output->width * 100);
 slot->x = wl_fixed_to_double(x);
 slot->y = wl_fixed_to_double(y);



 int progress = (int)((slot->x - slot->start_x)
   / slot->output->width * 100);
 if (abs(progress) / 20 != abs(prev_progress) / 20) {
  workspace_next(seat->bar, slot->output, progress - prev_progress < 0);
 }
}
