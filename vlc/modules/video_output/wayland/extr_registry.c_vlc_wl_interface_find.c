
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_wl_registry {int interfaces; } ;
typedef void vlc_wl_interface ;


 void** tfind (char const*,int *,int ) ;
 int vwimatch ;

__attribute__((used)) static struct vlc_wl_interface *
vlc_wl_interface_find(const struct vlc_wl_registry *vr, const char *interface)
{
    void **pvi = tfind(interface, &vr->interfaces, vwimatch);

    return (pvi != ((void*)0)) ? *pvi : ((void*)0);
}
