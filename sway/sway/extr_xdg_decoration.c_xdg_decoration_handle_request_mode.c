
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_listener {int dummy; } ;
struct sway_xdg_decoration {int wlr_xdg_decoration; } ;


 int WLR_XDG_TOPLEVEL_DECORATION_V1_MODE_SERVER_SIDE ;
 struct sway_xdg_decoration* deco ;
 int request_mode ;
 struct sway_xdg_decoration* wl_container_of (struct wl_listener*,int ,int ) ;
 int wlr_xdg_toplevel_decoration_v1_set_mode (int ,int ) ;

__attribute__((used)) static void xdg_decoration_handle_request_mode(struct wl_listener *listener,
  void *data) {
 struct sway_xdg_decoration *deco =
  wl_container_of(listener, deco, request_mode);
 wlr_xdg_toplevel_decoration_v1_set_mode(deco->wlr_xdg_decoration,
   WLR_XDG_TOPLEVEL_DECORATION_V1_MODE_SERVER_SIDE);
}
