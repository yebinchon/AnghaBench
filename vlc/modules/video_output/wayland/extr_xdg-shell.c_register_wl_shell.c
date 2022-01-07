
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_window_t ;
struct TYPE_4__ {int * wm_base; } ;
typedef TYPE_2__ vout_window_sys_t ;
typedef int uint32_t ;
struct wl_registry {int dummy; } ;


 scalar_t__ likely (int ) ;
 int * wl_registry_bind (struct wl_registry*,int ,int *,int ) ;
 int wl_shell_interface ;

__attribute__((used)) static void register_wl_shell(void *data, struct wl_registry *registry,
                              uint32_t name, uint32_t vers)
{
    vout_window_t *wnd = data;
    vout_window_sys_t *sys = wnd->sys;

    if (likely(sys->wm_base == ((void*)0)))
        sys->wm_base = wl_registry_bind(registry, name, &wl_shell_interface,
                                        vers);
}
