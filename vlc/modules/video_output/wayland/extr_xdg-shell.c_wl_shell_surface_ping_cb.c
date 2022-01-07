
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_shell_surface {int dummy; } ;


 int wl_shell_surface_pong (struct wl_shell_surface*,int ) ;

__attribute__((used)) static void wl_shell_surface_ping_cb(void *data,
                                     struct wl_shell_surface *surface,
                                     uint32_t serial)
{
    (void) data;
    wl_shell_surface_pong(surface, serial);
}
