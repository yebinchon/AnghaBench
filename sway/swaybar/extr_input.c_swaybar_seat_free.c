
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * touch; } ;
struct TYPE_3__ {int * cursor_surface; int * pointer; } ;
struct swaybar_seat {int link; int wl_seat; TYPE_2__ touch; TYPE_1__ pointer; } ;


 int free (struct swaybar_seat*) ;
 int wl_list_remove (int *) ;
 int wl_pointer_release (int *) ;
 int wl_seat_destroy (int ) ;
 int wl_surface_destroy (int *) ;
 int wl_touch_release (int *) ;

void swaybar_seat_free(struct swaybar_seat *seat) {
 if (!seat) {
  return;
 }
 if (seat->pointer.pointer != ((void*)0)) {
  wl_pointer_release(seat->pointer.pointer);
 }
 if (seat->pointer.cursor_surface != ((void*)0)) {
  wl_surface_destroy(seat->pointer.cursor_surface);
 }
 if (seat->touch.touch != ((void*)0)) {
  wl_touch_release(seat->touch.touch);
 }
 wl_seat_destroy(seat->wl_seat);
 wl_list_remove(&seat->link);
 free(seat);
}
