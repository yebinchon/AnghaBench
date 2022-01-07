
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_shm {int dummy; } ;
struct vlc_wl_registry {int dummy; } ;


 scalar_t__ vlc_wl_interface_bind (struct vlc_wl_registry*,char*,int *,int *) ;
 int wl_shm_interface ;

struct wl_shm *vlc_wl_shm_get(struct vlc_wl_registry *vr)
{
    return (struct wl_shm *)vlc_wl_interface_bind(vr, "wl_shm",
                                                  &wl_shm_interface, ((void*)0));
}
