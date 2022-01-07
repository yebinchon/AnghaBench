
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swaynag_button {int height; int text; scalar_t__ y; scalar_t__ x; scalar_t__ width; } ;
struct swaynag {int scale; TYPE_1__* type; } ;
typedef int cairo_t ;
struct TYPE_2__ {int button_border_thickness; int button_padding; int font; int text; int button_background; int border; } ;


 int cairo_fill (int *) ;
 int cairo_move_to (int *,scalar_t__,scalar_t__) ;
 int cairo_rectangle (int *,scalar_t__,scalar_t__,scalar_t__,int) ;
 int cairo_set_source_u32 (int *,int ) ;
 int get_text_size (int *,int ,int*,int*,int *,int,int,char*,int ) ;
 int pango_printf (int *,int ,int,int,char*,int ) ;

__attribute__((used)) static void render_details_scroll_button(cairo_t *cairo,
  struct swaynag *swaynag, struct swaynag_button *button) {
 int text_width, text_height;
 get_text_size(cairo, swaynag->type->font, &text_width, &text_height, ((void*)0),
   swaynag->scale, 1, "%s", button->text);

 int border = swaynag->type->button_border_thickness * swaynag->scale;
 int padding = swaynag->type->button_padding * swaynag->scale;

 cairo_set_source_u32(cairo, swaynag->type->border);
 cairo_rectangle(cairo, button->x, button->y,
   button->width, button->height);
 cairo_fill(cairo);

 cairo_set_source_u32(cairo, swaynag->type->button_background);
 cairo_rectangle(cairo, button->x + border, button->y + border,
   button->width - (border * 2), button->height - (border * 2));
 cairo_fill(cairo);

 cairo_set_source_u32(cairo, swaynag->type->text);
 cairo_move_to(cairo, button->x + border + padding,
   button->y + border + (button->height - text_height) / 2);
 pango_printf(cairo, swaynag->type->font, swaynag->scale, 1,
   "%s", button->text);
}
