
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_pointer {int dummy; } ;
struct TYPE_2__ {int * current; } ;
struct swaybar_seat {TYPE_1__ pointer; } ;



__attribute__((used)) static void wl_pointer_leave(void *data, struct wl_pointer *wl_pointer,
  uint32_t serial, struct wl_surface *surface) {
 struct swaybar_seat *seat = data;
 seat->pointer.current = ((void*)0);
}
