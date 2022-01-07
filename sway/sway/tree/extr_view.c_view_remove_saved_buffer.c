
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_view {int * saved_buffer; } ;


 int sway_assert (int *,char*) ;
 int wlr_buffer_unref (int *) ;

void view_remove_saved_buffer(struct sway_view *view) {
 if (!sway_assert(view->saved_buffer, "Expected a saved buffer")) {
  return;
 }
 wlr_buffer_unref(view->saved_buffer);
 view->saved_buffer = ((void*)0);
}
