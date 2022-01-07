
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_view {TYPE_1__* impl; } ;
struct TYPE_2__ {int (* get_constraints ) (struct sway_view*,double*,double*,double*,double*) ;} ;


 double DBL_MAX ;
 double DBL_MIN ;
 int stub1 (struct sway_view*,double*,double*,double*,double*) ;

void view_get_constraints(struct sway_view *view, double *min_width,
  double *max_width, double *min_height, double *max_height) {
 if (view->impl->get_constraints) {
  view->impl->get_constraints(view,
    min_width, max_width, min_height, max_height);
 } else {
  *min_width = DBL_MIN;
  *max_width = DBL_MAX;
  *min_height = DBL_MIN;
  *max_height = DBL_MAX;
 }
}
