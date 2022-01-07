
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wl_cursor {TYPE_3__** images; } ;
struct swaybar_pointer {int cursor_surface; TYPE_3__* cursor_image; int serial; int pointer; int cursor_theme; TYPE_1__* current; } ;
struct swaybar_seat {TYPE_2__* bar; struct swaybar_pointer pointer; } ;
struct TYPE_6__ {int hotspot_x; int hotspot_y; } ;
struct TYPE_5__ {int shm; } ;
struct TYPE_4__ {int scale; } ;


 int INT32_MAX ;
 scalar_t__ errno ;
 char* getenv (char*) ;
 scalar_t__ strlen (char const*) ;
 unsigned int strtoul (char const*,char**,int) ;
 int wl_cursor_image_get_buffer (TYPE_3__*) ;
 int wl_cursor_theme_destroy (int ) ;
 struct wl_cursor* wl_cursor_theme_get_cursor (int ,char*) ;
 int wl_cursor_theme_load (char const*,unsigned int,int ) ;
 int wl_pointer_set_cursor (int ,int ,int ,int,int) ;
 int wl_surface_attach (int ,int ,int ,int ) ;
 int wl_surface_commit (int ) ;
 int wl_surface_damage_buffer (int ,int ,int ,int ,int ) ;
 int wl_surface_set_buffer_scale (int ,int) ;

void update_cursor(struct swaybar_seat *seat) {
 struct swaybar_pointer *pointer = &seat->pointer;
 if (!pointer || !pointer->cursor_surface) {
  return;
 }
 if (pointer->cursor_theme) {
  wl_cursor_theme_destroy(pointer->cursor_theme);
 }
 const char *cursor_theme = getenv("XCURSOR_THEME");
 unsigned cursor_size = 24;
 const char *env_cursor_size = getenv("XCURSOR_SIZE");
 if (env_cursor_size && strlen(env_cursor_size) > 0) {
  errno = 0;
  char *end;
  unsigned size = strtoul(env_cursor_size, &end, 10);
  if (!*end && errno == 0) {
   cursor_size = size;
  }
 }
 int scale = pointer->current ? pointer->current->scale : 1;
 pointer->cursor_theme = wl_cursor_theme_load(
  cursor_theme, cursor_size * scale, seat->bar->shm);
 struct wl_cursor *cursor;
 cursor = wl_cursor_theme_get_cursor(pointer->cursor_theme, "left_ptr");
 pointer->cursor_image = cursor->images[0];
 wl_surface_set_buffer_scale(pointer->cursor_surface, scale);
 wl_surface_attach(pointer->cursor_surface,
   wl_cursor_image_get_buffer(pointer->cursor_image), 0, 0);
 wl_pointer_set_cursor(pointer->pointer, pointer->serial,
   pointer->cursor_surface,
   pointer->cursor_image->hotspot_x / scale,
   pointer->cursor_image->hotspot_y / scale);
 wl_surface_damage_buffer(pointer->cursor_surface, 0, 0,
   INT32_MAX, INT32_MAX);
 wl_surface_commit(pointer->cursor_surface);
}
