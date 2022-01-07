
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct vlc_wl_interface {int globals; } ;
struct vlc_wl_global {int node; struct vlc_wl_interface* interface; void* version; void* name; } ;


 scalar_t__ likely (int ) ;
 struct vlc_wl_global* malloc (int) ;
 int wl_list_insert (int *,int *) ;

__attribute__((used)) static struct vlc_wl_global *vlc_wl_global_add(struct vlc_wl_interface *vi,
                                               uint32_t name, uint32_t version)
{
    struct vlc_wl_global *vg = malloc(sizeof (*vg));
    if (likely(vg != ((void*)0)))
    {
        vg->name = name;
        vg->version = version;
        vg->interface = vi;
        wl_list_insert(&vi->globals, &vg->node);
    }
    return vg;
}
