
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_wl_registry {int interfaces; int names; int registry; } ;


 int free (struct vlc_wl_registry*) ;
 int interface_destroy ;
 int name_destroy ;
 int tdestroy (int ,int ) ;
 int wl_registry_destroy (int ) ;

void vlc_wl_registry_destroy(struct vlc_wl_registry *vr)
{
    wl_registry_destroy(vr->registry);
    tdestroy(vr->names, name_destroy);
    tdestroy(vr->interfaces, interface_destroy);
    free(vr);
}
