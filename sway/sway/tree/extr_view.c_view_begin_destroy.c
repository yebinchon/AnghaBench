
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_view {int destroying; int container; int * surface; } ;


 int sway_assert (int ,char*) ;
 int view_destroy (struct sway_view*) ;

void view_begin_destroy(struct sway_view *view) {
 if (!sway_assert(view->surface == ((void*)0), "Tried to destroy a mapped view")) {
  return;
 }
 view->destroying = 1;

 if (!view->container) {
  view_destroy(view);
 }
}
