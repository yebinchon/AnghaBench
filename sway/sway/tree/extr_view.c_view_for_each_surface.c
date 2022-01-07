
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wlr_surface_iterator_func_t ;
struct sway_view {int surface; TYPE_1__* impl; } ;
struct TYPE_2__ {int (* for_each_surface ) (struct sway_view*,int ,void*) ;} ;


 int stub1 (struct sway_view*,int ,void*) ;
 int wlr_surface_for_each_surface (int ,int ,void*) ;

void view_for_each_surface(struct sway_view *view,
  wlr_surface_iterator_func_t iterator, void *user_data) {
 if (!view->surface) {
  return;
 }
 if (view->impl->for_each_surface) {
  view->impl->for_each_surface(view, iterator, user_data);
 } else {
  wlr_surface_for_each_surface(view->surface, iterator, user_data);
 }
}
