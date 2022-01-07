
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_view {TYPE_1__* impl; } ;
struct TYPE_2__ {char const* (* get_string_prop ) (struct sway_view*,int ) ;} ;


 int VIEW_PROP_APP_ID ;
 char const* stub1 (struct sway_view*,int ) ;

const char *view_get_app_id(struct sway_view *view) {
 if (view->impl->get_string_prop) {
  return view->impl->get_string_prop(view, VIEW_PROP_APP_ID);
 }
 return ((void*)0);
}
