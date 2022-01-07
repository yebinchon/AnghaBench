
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_view {TYPE_1__* impl; struct sway_view* title_format; int executed_criteria; int * container; int destroying; int * surface; } ;
struct TYPE_2__ {int (* destroy ) (struct sway_view*) ;} ;


 int free (struct sway_view*) ;
 int list_free (int ) ;
 int stub1 (struct sway_view*) ;
 int sway_assert (int ,char*) ;

void view_destroy(struct sway_view *view) {
 if (!sway_assert(view->surface == ((void*)0), "Tried to free mapped view")) {
  return;
 }
 if (!sway_assert(view->destroying,
    "Tried to free view which wasn't marked as destroying")) {
  return;
 }
 if (!sway_assert(view->container == ((void*)0),
    "Tried to free view which still has a container "
    "(might have a pending transaction?)")) {
  return;
 }
 list_free(view->executed_criteria);

 free(view->title_format);

 if (view->impl->destroy) {
  view->impl->destroy(view);
 } else {
  free(view);
 }
}
