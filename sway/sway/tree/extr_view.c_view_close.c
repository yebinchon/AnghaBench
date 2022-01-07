
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_view {TYPE_1__* impl; } ;
struct TYPE_2__ {int (* close ) (struct sway_view*) ;} ;


 int stub1 (struct sway_view*) ;

void view_close(struct sway_view *view) {
 if (view->impl->close) {
  view->impl->close(view);
 }
}
