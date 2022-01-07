
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fast32_t ;
struct vlc_wl_registry {int dummy; } ;
struct vlc_wl_global {int version; } ;


 struct vlc_wl_global* vlc_wl_global_find (struct vlc_wl_registry*,char const*) ;

uint_fast32_t vlc_wl_interface_get_version(struct vlc_wl_registry *vr,
                                           const char *interface)
{
    const struct vlc_wl_global *vg = vlc_wl_global_find(vr, interface);

    return (vg != ((void*)0)) ? vg->version : 0;
}
