
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_xwayland_view {int dummy; } ;
struct sway_view {int dummy; } ;


 int free (struct sway_xwayland_view*) ;
 struct sway_xwayland_view* xwayland_view_from_view (struct sway_view*) ;

__attribute__((used)) static void destroy(struct sway_view *view) {
 struct sway_xwayland_view *xwayland_view = xwayland_view_from_view(view);
 if (xwayland_view == ((void*)0)) {
  return;
 }
 free(xwayland_view);
}
