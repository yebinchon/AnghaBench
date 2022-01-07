
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_touch {int dummy; } ;
struct swaybar_touch {TYPE_1__* slots; } ;
struct swaybar_seat {struct swaybar_touch touch; } ;
struct TYPE_2__ {int * output; } ;



__attribute__((used)) static void wl_touch_cancel(void *data, struct wl_touch *wl_touch) {
 struct swaybar_seat *seat = data;
 struct swaybar_touch *touch = &seat->touch;
 for (size_t i = 0; i < sizeof(touch->slots) / sizeof(*touch->slots); ++i) {
  touch->slots[i].output = ((void*)0);
 }
}
