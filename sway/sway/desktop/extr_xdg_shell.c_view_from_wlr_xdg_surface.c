
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xdg_surface {struct sway_view* data; } ;
struct sway_view {int dummy; } ;



struct sway_view *view_from_wlr_xdg_surface(
  struct wlr_xdg_surface *xdg_surface) {
 return xdg_surface->data;
}
