
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_window_t ;
struct TYPE_4__ {int * compositor; } ;
typedef TYPE_2__ vout_window_sys_t ;
typedef int uint32_t ;
struct wl_registry {int dummy; } ;


 scalar_t__ likely (int ) ;
 int wl_compositor_interface ;
 int * wl_registry_bind (struct wl_registry*,int ,int *,int ) ;

__attribute__((used)) static void register_wl_compositor(void *data, struct wl_registry *registry,
                                   uint32_t name, uint32_t vers)
{
    vout_window_t *wnd = data;
    vout_window_sys_t *sys = wnd->sys;

    if (likely(sys->compositor == ((void*)0)))
        sys->compositor = wl_registry_bind(registry, name,
                                           &wl_compositor_interface, vers);
}
