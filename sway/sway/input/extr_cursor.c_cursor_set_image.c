
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl_client {int dummy; } ;
struct sway_cursor {char* image; int cursor; int xcursor_manager; scalar_t__ hidden; struct wl_client* image_client; scalar_t__ hotspot_y; scalar_t__ hotspot_x; int * image_surface; TYPE_2__* seat; } ;
struct TYPE_4__ {TYPE_1__* wlr_seat; } ;
struct TYPE_3__ {int capabilities; } ;


 int WL_SEAT_CAPABILITY_POINTER ;
 scalar_t__ strcmp (char const*,char const*) ;
 int wlr_cursor_set_image (int ,int *,int ,int ,int ,int ,int ,int ) ;
 int wlr_xcursor_manager_set_cursor_image (int ,char const*,int ) ;

void cursor_set_image(struct sway_cursor *cursor, const char *image,
  struct wl_client *client) {
 if (!(cursor->seat->wlr_seat->capabilities & WL_SEAT_CAPABILITY_POINTER)) {
  return;
 }

 const char *current_image = cursor->image;
 cursor->image = image;
 cursor->image_surface = ((void*)0);
 cursor->hotspot_x = cursor->hotspot_y = 0;
 cursor->image_client = client;

 if (cursor->hidden) {
  return;
 }

 if (!image) {
  wlr_cursor_set_image(cursor->cursor, ((void*)0), 0, 0, 0, 0, 0, 0);
 } else if (!current_image || strcmp(current_image, image) != 0) {
  wlr_xcursor_manager_set_cursor_image(cursor->xcursor_manager, image,
    cursor->cursor);
 }
}
