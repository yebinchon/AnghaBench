
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_xwayland_surface {struct sway_view* data; } ;
struct sway_view {int dummy; } ;



struct sway_view *view_from_wlr_xwayland_surface(
  struct wlr_xwayland_surface *xsurface) {
 return xsurface->data;
}
