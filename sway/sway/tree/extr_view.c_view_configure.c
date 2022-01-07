
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sway_view {TYPE_1__* impl; } ;
struct TYPE_2__ {int (* configure ) (struct sway_view*,double,double,int,int) ;} ;


 int stub1 (struct sway_view*,double,double,int,int) ;

uint32_t view_configure(struct sway_view *view, double lx, double ly, int width,
  int height) {
 if (view->impl->configure) {
  return view->impl->configure(view, lx, ly, width, height);
 }
 return 0;
}
