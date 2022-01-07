
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_4__ {int manager; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;
typedef int uint32_t ;
struct wl_registry {int dummy; } ;


 int strcmp (char const*,char*) ;
 int wl_registry_bind (struct wl_registry*,int ,int *,int) ;
 int zwp_idle_inhibit_manager_v1_interface ;

__attribute__((used)) static void registry_global_cb(void *data, struct wl_registry *registry,
                               uint32_t name, const char *iface, uint32_t vers)
{
    vlc_inhibit_t *ih = data;
    vlc_inhibit_sys_t *sys = ih->p_sys;

    if (!strcmp(iface, "zwp_idle_inhibit_manager_v1"))
        sys->manager = wl_registry_bind(registry, name,
                                    &zwp_idle_inhibit_manager_v1_interface, 1);
    (void) vers;
}
