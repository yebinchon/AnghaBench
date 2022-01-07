
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct swaynag_button {int x; int y; int width; int height; int text; } ;
struct swaynag {int scale; scalar_t__ height; TYPE_2__* type; TYPE_1__* buttons; } ;
typedef int cairo_t ;
struct TYPE_4__ {int button_border_thickness; int button_padding; int font; int text; int button_background; int border; } ;
struct TYPE_3__ {struct swaynag_button** items; } ;


 int cairo_fill (int *) ;
 int cairo_move_to (int *,int,int) ;
 int cairo_rectangle (int *,int,int,int,int) ;
 int cairo_set_source_u32 (int *,int ) ;
 int get_text_size (int *,int ,int*,int*,int *,int,int,char*,int ) ;
 int pango_printf (int *,int ,scalar_t__,int,char*,int ) ;

__attribute__((used)) static uint32_t render_button(cairo_t *cairo, struct swaynag *swaynag,
  int button_index, int *x) {
 struct swaynag_button *button = swaynag->buttons->items[button_index];

 int text_width, text_height;
 get_text_size(cairo, swaynag->type->font, &text_width, &text_height, ((void*)0),
   swaynag->scale, 1, "%s", button->text);

 int border = swaynag->type->button_border_thickness * swaynag->scale;
 int padding = swaynag->type->button_padding * swaynag->scale;

 uint32_t ideal_height = text_height + padding * 2 + border * 2;
 uint32_t ideal_surface_height = ideal_height / swaynag->scale;
 if (swaynag->height < ideal_surface_height) {
  return ideal_surface_height;
 }

 button->x = *x - border - text_width - padding * 2 + 1;
 button->y = (int)(ideal_height - text_height) / 2 - padding + 1;
 button->width = text_width + padding * 2;
 button->height = text_height + padding * 2;

 cairo_set_source_u32(cairo, swaynag->type->border);
 cairo_rectangle(cairo, button->x - border, button->y - border,
   button->width + border * 2, button->height + border * 2);
 cairo_fill(cairo);

 cairo_set_source_u32(cairo, swaynag->type->button_background);
 cairo_rectangle(cairo, button->x, button->y,
   button->width, button->height);
 cairo_fill(cairo);

 cairo_set_source_u32(cairo, swaynag->type->text);
 cairo_move_to(cairo, button->x + padding, button->y + padding);
 pango_printf(cairo, swaynag->type->font, swaynag->scale, 1,
   "%s", button->text);

 *x = button->x - border;

 return ideal_surface_height;
}
