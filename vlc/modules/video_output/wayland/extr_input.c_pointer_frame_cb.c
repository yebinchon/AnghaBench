
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_pointer {int dummy; } ;



__attribute__((used)) static void pointer_frame_cb(void *data, struct wl_pointer *pointer)
{
    (void) data; (void) pointer;
}
