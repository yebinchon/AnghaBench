
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wl_seat {int dummy; } ;
struct TYPE_6__ {int * touch; } ;
struct TYPE_5__ {int * pointer; scalar_t__ cursor_surface; } ;
struct swaybar_seat {TYPE_3__ touch; TYPE_2__ pointer; TYPE_1__* bar; } ;
typedef enum wl_seat_capability { ____Placeholder_wl_seat_capability } wl_seat_capability ;
struct TYPE_4__ {int compositor; scalar_t__ running; } ;


 int WL_SEAT_CAPABILITY_POINTER ;
 int WL_SEAT_CAPABILITY_TOUCH ;
 int assert (scalar_t__) ;
 int pointer_listener ;
 int touch_listener ;
 scalar_t__ wl_compositor_create_surface (int ) ;
 int wl_pointer_add_listener (int *,int *,struct swaybar_seat*) ;
 int wl_pointer_release (int *) ;
 int * wl_seat_get_pointer (struct wl_seat*) ;
 int * wl_seat_get_touch (struct wl_seat*) ;
 int wl_touch_add_listener (int *,int *,struct swaybar_seat*) ;
 int wl_touch_release (int *) ;

__attribute__((used)) static void seat_handle_capabilities(void *data, struct wl_seat *wl_seat,
  enum wl_seat_capability caps) {
 struct swaybar_seat *seat = data;
 if (seat->pointer.pointer != ((void*)0)) {
  wl_pointer_release(seat->pointer.pointer);
  seat->pointer.pointer = ((void*)0);
 }
 if (seat->touch.touch != ((void*)0)) {
  wl_touch_release(seat->touch.touch);
  seat->touch.touch = ((void*)0);
 }
 if ((caps & WL_SEAT_CAPABILITY_POINTER)) {
  seat->pointer.pointer = wl_seat_get_pointer(wl_seat);
  if (seat->bar->running && !seat->pointer.cursor_surface) {
   seat->pointer.cursor_surface =
    wl_compositor_create_surface(seat->bar->compositor);
   assert(seat->pointer.cursor_surface);
  }
  wl_pointer_add_listener(seat->pointer.pointer, &pointer_listener, seat);
 }
 if ((caps & WL_SEAT_CAPABILITY_TOUCH)) {
  seat->touch.touch = wl_seat_get_touch(wl_seat);
  wl_touch_add_listener(seat->touch.touch, &touch_listener, seat);
 }
}
