
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wl_fixed_t ;
typedef int uint32_t ;
struct wl_pointer {int dummy; } ;
struct TYPE_2__ {void* y; void* x; } ;
struct swaybar_seat {TYPE_1__ pointer; } ;


 void* wl_fixed_to_int (int ) ;

__attribute__((used)) static void wl_pointer_motion(void *data, struct wl_pointer *wl_pointer,
  uint32_t time, wl_fixed_t surface_x, wl_fixed_t surface_y) {
 struct swaybar_seat *seat = data;
 seat->pointer.x = wl_fixed_to_int(surface_x);
 seat->pointer.y = wl_fixed_to_int(surface_y);
}
