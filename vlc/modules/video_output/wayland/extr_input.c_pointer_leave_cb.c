
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_surface {int dummy; } ;
struct wl_pointer {int dummy; } ;



__attribute__((used)) static void pointer_leave_cb(void *data, struct wl_pointer *pointer,
                             uint32_t serial, struct wl_surface *surface)
{
    (void) data; (void) pointer; (void) serial; (void) surface;
}
