
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_listener {int dummy; } ;
struct sway_view {scalar_t__ surface; int container; } ;
struct sway_server_decoration {TYPE_1__* wlr_server_decoration; } ;
struct TYPE_2__ {scalar_t__ surface; scalar_t__ mode; } ;


 scalar_t__ WLR_SERVER_DECORATION_MANAGER_MODE_CLIENT ;
 int arrange_container (int ) ;
 struct sway_server_decoration* deco ;
 int mode ;
 int transaction_commit_dirty () ;
 struct sway_view* view_from_wlr_surface (scalar_t__) ;
 int view_update_csd_from_client (struct sway_view*,int) ;
 struct sway_server_decoration* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void server_decoration_handle_mode(struct wl_listener *listener,
  void *data) {
 struct sway_server_decoration *deco =
  wl_container_of(listener, deco, mode);
 struct sway_view *view =
  view_from_wlr_surface(deco->wlr_server_decoration->surface);
 if (view == ((void*)0) || view->surface != deco->wlr_server_decoration->surface) {
  return;
 }

 bool csd = deco->wlr_server_decoration->mode ==
   WLR_SERVER_DECORATION_MANAGER_MODE_CLIENT;
 view_update_csd_from_client(view, csd);

 arrange_container(view->container);
 transaction_commit_dirty();
}
