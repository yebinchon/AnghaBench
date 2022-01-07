
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_view {TYPE_2__* surface; int saved_buffer_height; int saved_buffer_width; scalar_t__ saved_buffer; } ;
struct TYPE_3__ {int height; int width; } ;
struct TYPE_4__ {TYPE_1__ current; int buffer; } ;


 int sway_assert (int,char*) ;
 int view_remove_saved_buffer (struct sway_view*) ;
 scalar_t__ wlr_buffer_ref (int ) ;
 scalar_t__ wlr_surface_has_buffer (TYPE_2__*) ;

void view_save_buffer(struct sway_view *view) {
 if (!sway_assert(!view->saved_buffer, "Didn't expect saved buffer")) {
  view_remove_saved_buffer(view);
 }
 if (view->surface && wlr_surface_has_buffer(view->surface)) {
  view->saved_buffer = wlr_buffer_ref(view->surface->buffer);
  view->saved_buffer_width = view->surface->current.width;
  view->saved_buffer_height = view->surface->current.height;
 }
}
