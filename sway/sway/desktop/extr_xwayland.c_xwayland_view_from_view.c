
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_xwayland_view {int dummy; } ;
struct sway_view {scalar_t__ type; } ;


 scalar_t__ SWAY_VIEW_XWAYLAND ;
 int sway_assert (int,char*) ;

__attribute__((used)) static struct sway_xwayland_view *xwayland_view_from_view(
  struct sway_view *view) {
 if (!sway_assert(view->type == SWAY_VIEW_XWAYLAND,
   "Expected xwayland view")) {
  return ((void*)0);
 }
 return (struct sway_xwayland_view *)view;
}
