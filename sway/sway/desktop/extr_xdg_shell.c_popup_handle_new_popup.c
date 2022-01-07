
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_xdg_popup {int dummy; } ;
struct wl_listener {int dummy; } ;
struct TYPE_2__ {int view; } ;
struct sway_xdg_popup {TYPE_1__ child; } ;


 int new_popup ;
 struct sway_xdg_popup* popup ;
 int popup_create (struct wlr_xdg_popup*,int ) ;
 struct sway_xdg_popup* wl_container_of (struct wl_listener*,int ,int ) ;

__attribute__((used)) static void popup_handle_new_popup(struct wl_listener *listener, void *data) {
 struct sway_xdg_popup *popup =
  wl_container_of(listener, popup, new_popup);
 struct wlr_xdg_popup *wlr_popup = data;
 popup_create(wlr_popup, popup->child.view);
}
