
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sway_view {TYPE_1__* impl; } ;
struct TYPE_2__ {int (* get_int_prop ) (struct sway_view*,int ) ;} ;


 int VIEW_PROP_WINDOW_TYPE ;
 int stub1 (struct sway_view*,int ) ;

uint32_t view_get_window_type(struct sway_view *view) {
 if (view->impl->get_int_prop) {
  return view->impl->get_int_prop(view, VIEW_PROP_WINDOW_TYPE);
 }
 return 0;
}
