
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_registry {int dummy; } ;
struct vlc_wl_registry {int names; int interfaces; } ;
typedef void vlc_wl_interface ;
typedef void vlc_wl_global ;


 void** tsearch (void*,int *,int ) ;
 scalar_t__ unlikely (int) ;
 void* vlc_wl_global_add (void*,int ,int ) ;
 int vlc_wl_global_remove (void*) ;
 void* vlc_wl_interface_create (char const*) ;
 int vlc_wl_interface_destroy (void*) ;
 int vwicmp ;
 int vwncmp ;

__attribute__((used)) static void registry_global_cb(void *data, struct wl_registry *registry,
                               uint32_t name, const char *iface, uint32_t vers)
{
    struct vlc_wl_registry *vr = data;
    struct vlc_wl_interface *vi = vlc_wl_interface_create(iface);

    void **pvi = tsearch(vi, &vr->interfaces, vwicmp);
    if (unlikely(pvi == ((void*)0)))
    {
        vlc_wl_interface_destroy(vi);
        return;
    }

    if (*pvi != vi)
    {
        vlc_wl_interface_destroy(vi);
        vi = *pvi;
    }

    struct vlc_wl_global *vg = vlc_wl_global_add(vi, name, vers);
    if (unlikely(vg == ((void*)0)))
        return;

    void **pvg = tsearch(vg, &vr->names, vwncmp);
    if (unlikely(pvg == ((void*)0))
     || unlikely(*pvg != vg) )
        vlc_wl_global_remove(vg);

    (void) registry;
}
