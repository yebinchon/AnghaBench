
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_seat {int dummy; } ;
struct TYPE_2__ {int * pointer; } ;
struct swaynag {TYPE_1__ pointer; } ;
typedef enum wl_seat_capability { ____Placeholder_wl_seat_capability } wl_seat_capability ;


 int WL_SEAT_CAPABILITY_POINTER ;
 int pointer_listener ;
 int wl_pointer_add_listener (int *,int *,struct swaynag*) ;
 int wl_pointer_destroy (int *) ;
 int * wl_seat_get_pointer (struct wl_seat*) ;

__attribute__((used)) static void seat_handle_capabilities(void *data, struct wl_seat *wl_seat,
  enum wl_seat_capability caps) {
 struct swaynag *swaynag = data;
 bool cap_pointer = caps & WL_SEAT_CAPABILITY_POINTER;
 if (cap_pointer && !swaynag->pointer.pointer) {
  swaynag->pointer.pointer = wl_seat_get_pointer(wl_seat);
  wl_pointer_add_listener(swaynag->pointer.pointer, &pointer_listener,
    swaynag);
 } else if (!cap_pointer && swaynag->pointer.pointer) {
  wl_pointer_destroy(swaynag->pointer.pointer);
  swaynag->pointer.pointer = ((void*)0);
 }
}
