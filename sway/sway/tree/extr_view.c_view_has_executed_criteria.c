
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_view {TYPE_1__* executed_criteria; } ;
struct criteria {int dummy; } ;
struct TYPE_2__ {int length; struct criteria** items; } ;



__attribute__((used)) static bool view_has_executed_criteria(struct sway_view *view,
  struct criteria *criteria) {
 for (int i = 0; i < view->executed_criteria->length; ++i) {
  struct criteria *item = view->executed_criteria->items[i];
  if (item == criteria) {
   return 1;
  }
 }
 return 0;
}
