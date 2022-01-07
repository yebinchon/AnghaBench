
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct TYPE_4__ {int link; } ;
struct TYPE_3__ {int link; } ;
struct sway_server_decoration {int link; TYPE_2__ mode; TYPE_1__ destroy; } ;


 struct sway_server_decoration* deco ;
 int destroy ;
 int free (struct sway_server_decoration*) ;
 struct sway_server_decoration* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void server_decoration_handle_destroy(struct wl_listener *listener,
  void *data) {
 struct sway_server_decoration *deco =
  wl_container_of(listener, deco, destroy);
 wl_list_remove(&deco->destroy.link);
 wl_list_remove(&deco->mode.link);
 wl_list_remove(&deco->link);
 free(deco);
}
