
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_view {TYPE_1__* impl; } ;
struct TYPE_2__ {int (* set_tiled ) (struct sway_view*,int) ;} ;


 int stub1 (struct sway_view*,int) ;

void view_set_tiled(struct sway_view *view, bool tiled) {
 if (view->impl->set_tiled) {
  view->impl->set_tiled(view, tiled);
 }
}
