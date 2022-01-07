
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_proxy {int dummy; } ;
struct wl_interface {int dummy; } ;
struct vlc_wl_registry {int registry; } ;
struct vlc_wl_global {int version; int name; } ;


 struct vlc_wl_global* vlc_wl_global_find (struct vlc_wl_registry*,char const*) ;
 struct wl_proxy* wl_registry_bind (int ,int ,struct wl_interface const*,int) ;

struct wl_proxy *vlc_wl_interface_bind(struct vlc_wl_registry *vr,
                                       const char *interface,
                                       const struct wl_interface *wi,
                                       uint32_t *restrict version)
{
    const struct vlc_wl_global *vg = vlc_wl_global_find(vr, interface);

    if (vg == ((void*)0))
        return 0;

    uint32_t vers = (version != ((void*)0)) ? *version : 1;

    if (vers > vg->version)
        *version = vers = vg->version;

    return wl_registry_bind(vr->registry, vg->name, wi, vers);
}
