
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_registry {int dummy; } ;
struct vlc_wl_registry {int names; } ;
struct vlc_wl_global {int name; } ;


 scalar_t__ likely (int ) ;
 int tdelete (struct vlc_wl_global*,int *,int ) ;
 void** tfind (struct vlc_wl_global*,int *,int ) ;
 int vlc_wl_global_remove (struct vlc_wl_global*) ;
 int vwncmp ;

__attribute__((used)) static void registry_global_remove_cb(void *data, struct wl_registry *registry,
                                      uint32_t name)
{
    struct vlc_wl_registry *vr = data;
    struct vlc_wl_global key = { .name = name };
    void **pvg = tfind(&key, &vr->names, vwncmp);

    if (likely(pvg != ((void*)0)))
    {
        struct vlc_wl_global *vg = *pvg;

        tdelete(vg, &vr->names, vwncmp);
        vlc_wl_global_remove(vg);
    }

    (void) registry;
}
