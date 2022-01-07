
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_cursor {int hidden; char* image; int image_client; int hotspot_y; int hotspot_x; scalar_t__ image_surface; } ;


 int cursor_rebase (struct sway_cursor*) ;
 int cursor_set_image (struct sway_cursor*,char const*,int ) ;
 int cursor_set_image_surface (struct sway_cursor*,scalar_t__,int ,int ,int ) ;

void cursor_unhide(struct sway_cursor *cursor) {
 cursor->hidden = 0;
 if (cursor->image_surface) {
  cursor_set_image_surface(cursor,
    cursor->image_surface,
    cursor->hotspot_x,
    cursor->hotspot_y,
    cursor->image_client);
 } else {
  const char *image = cursor->image;
  cursor->image = ((void*)0);
  cursor_set_image(cursor, image, cursor->image_client);
 }
 cursor_rebase(cursor);
}
