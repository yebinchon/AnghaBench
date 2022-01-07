
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_xwayland_surface {int pid; } ;
struct wl_client {int dummy; } ;
struct sway_view {int type; int pid; TYPE_1__* surface; } ;
typedef int pid_t ;
struct TYPE_2__ {int resource; } ;




 int wl_client_get_credentials (struct wl_client*,int *,int *,int *) ;
 struct wl_client* wl_resource_get_client (int ) ;
 struct wlr_xwayland_surface* wlr_xwayland_surface_from_wlr_surface (TYPE_1__*) ;

__attribute__((used)) static void view_populate_pid(struct sway_view *view) {
 pid_t pid;
 switch (view->type) {







 case 129:;
  struct wl_client *client =
   wl_resource_get_client(view->surface->resource);
  wl_client_get_credentials(client, &pid, ((void*)0), ((void*)0));
  break;
 }
 view->pid = pid;
}
