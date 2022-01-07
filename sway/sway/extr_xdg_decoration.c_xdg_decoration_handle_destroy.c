
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
struct sway_xdg_decoration {int link; TYPE_3__ request_mode; TYPE_2__ destroy; TYPE_1__* view; } ;
struct TYPE_4__ {int * xdg_decoration; } ;


 struct sway_xdg_decoration* deco ;
 int destroy ;
 int free (struct sway_xdg_decoration*) ;
 struct sway_xdg_decoration* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_list_remove (int *) ;

__attribute__((used)) static void xdg_decoration_handle_destroy(struct wl_listener *listener,
  void *data) {
 struct sway_xdg_decoration *deco =
  wl_container_of(listener, deco, destroy);
 if(deco->view) {
  deco->view->xdg_decoration = ((void*)0);
 }
 wl_list_remove(&deco->destroy.link);
 wl_list_remove(&deco->request_mode.link);
 wl_list_remove(&deco->link);
 free(deco);
}
