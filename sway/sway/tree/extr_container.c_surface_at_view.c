
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_surface {int dummy; } ;
struct TYPE_2__ {double x; double y; } ;
struct sway_view {int type; int wlr_xdg_surface; int surface; TYPE_1__ geometry; } ;
struct sway_container {double surface_x; double surface_y; struct sway_view* view; } ;




 int sway_assert (struct sway_view*,char*) ;
 struct wlr_surface* wlr_surface_surface_at (int ,double,double,double*,double*) ;
 struct wlr_surface* wlr_xdg_surface_surface_at (int ,double,double,double*,double*) ;

__attribute__((used)) static struct sway_container *surface_at_view(struct sway_container *con, double lx, double ly,
  struct wlr_surface **surface, double *sx, double *sy) {
 if (!sway_assert(con->view, "Expected a view")) {
  return ((void*)0);
 }
 struct sway_view *view = con->view;
 double view_sx = lx - con->surface_x + view->geometry.x;
 double view_sy = ly - con->surface_y + view->geometry.y;

 double _sx, _sy;
 struct wlr_surface *_surface = ((void*)0);
 switch (view->type) {






 case 129:
  _surface = wlr_xdg_surface_surface_at(
    view->wlr_xdg_surface,
    view_sx, view_sy, &_sx, &_sy);
  break;
 }
 if (_surface) {
  *sx = _sx;
  *sy = _sy;
  *surface = _surface;
  return con;
 }
 return ((void*)0);
}
