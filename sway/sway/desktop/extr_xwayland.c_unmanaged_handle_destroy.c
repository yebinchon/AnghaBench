
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_6__ {int link; } ;
struct TYPE_5__ {int link; } ;
struct TYPE_4__ {int link; } ;
struct sway_xwayland_unmanaged {TYPE_3__ destroy; TYPE_2__ unmap; TYPE_1__ map; } ;


 int destroy ;
 int free (struct sway_xwayland_unmanaged*) ;
 struct sway_xwayland_unmanaged* surface ;
 struct sway_xwayland_unmanaged* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void unmanaged_handle_destroy(struct wl_listener *listener, void *data) {
 struct sway_xwayland_unmanaged *surface =
  wl_container_of(listener, surface, destroy);
 wl_list_remove(&surface->map.link);
 wl_list_remove(&surface->unmap.link);
 wl_list_remove(&surface->destroy.link);
 free(surface);
}
