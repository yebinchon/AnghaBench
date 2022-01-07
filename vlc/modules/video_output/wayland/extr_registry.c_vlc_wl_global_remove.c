
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_wl_global {int node; } ;


 int free (struct vlc_wl_global*) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void vlc_wl_global_remove(struct vlc_wl_global *vg)
{
    wl_list_remove(&vg->node);
    free(vg);
}
