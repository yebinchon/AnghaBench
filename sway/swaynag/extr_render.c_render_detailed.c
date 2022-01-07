
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int x; int y; int width; int height; } ;
struct TYPE_7__ {int x; int y; int width; int height; TYPE_4__ button_down; TYPE_4__ button_up; void* visible_lines; int offset; void* total_lines; int message; } ;
struct swaynag {int width; int scale; TYPE_1__* type; TYPE_2__ details; } ;
typedef int gint ;
typedef int cairo_t ;
struct TYPE_8__ {int start_index; } ;
struct TYPE_6__ {int details_border_thickness; int message_padding; int text; int border; int font; } ;
typedef TYPE_3__ PangoLayoutLine ;
typedef int PangoLayout ;


 int PANGO_ELLIPSIZE_END ;
 int PANGO_SCALE ;
 int PANGO_WRAP_WORD_CHAR ;
 int SWAYNAG_MAX_HEIGHT ;
 int cairo_fill (int *) ;
 int cairo_move_to (int *,int,int) ;
 int cairo_rectangle (int *,int,int,int,int) ;
 int cairo_set_source_u32 (int *,int ) ;
 int g_object_unref (int *) ;
 int get_detailed_scroll_button_width (int *,struct swaynag*) ;
 int * get_pango_layout (int *,int ,int ,int,int) ;
 int pango_cairo_show_layout (int *,int *) ;
 int pango_cairo_update_layout (int *,int *) ;
 void* pango_layout_get_line_count (int *) ;
 TYPE_3__* pango_layout_get_line_readonly (int *,int ) ;
 int pango_layout_get_pixel_size (int *,int*,int*) ;
 char* pango_layout_get_text (int *) ;
 int pango_layout_set_ellipsize (int *,int ) ;
 int pango_layout_set_height (int *,int) ;
 int pango_layout_set_single_paragraph_mode (int *,int) ;
 int pango_layout_set_text (int *,char const*,int) ;
 int pango_layout_set_width (int *,int) ;
 int pango_layout_set_wrap (int *,int ) ;
 int render_details_scroll_button (int *,struct swaynag*,TYPE_4__*) ;
 int strlen (char const*) ;

__attribute__((used)) static uint32_t render_detailed(cairo_t *cairo, struct swaynag *swaynag,
  uint32_t y) {
 uint32_t width = swaynag->width * swaynag->scale;

 int border = swaynag->type->details_border_thickness * swaynag->scale;
 int padding = swaynag->type->message_padding * swaynag->scale;
 int decor = padding + border;

 swaynag->details.x = decor;
 swaynag->details.y = y * swaynag->scale + decor;
 swaynag->details.width = width - decor * 2;

 PangoLayout *layout = get_pango_layout(cairo, swaynag->type->font,
   swaynag->details.message, swaynag->scale, 0);
 pango_layout_set_width(layout,
   (swaynag->details.width - padding * 2) * PANGO_SCALE);
 pango_layout_set_wrap(layout, PANGO_WRAP_WORD_CHAR);
 pango_layout_set_single_paragraph_mode(layout, 0);
 pango_cairo_update_layout(cairo, layout);
 swaynag->details.total_lines = pango_layout_get_line_count(layout);

 PangoLayoutLine *line;
 line = pango_layout_get_line_readonly(layout, swaynag->details.offset);
 gint offset = line->start_index;
 const char *text = pango_layout_get_text(layout);
 pango_layout_set_text(layout, text + offset, strlen(text) - offset);

 int text_width, text_height;
 pango_cairo_update_layout(cairo, layout);
 pango_layout_get_pixel_size(layout, &text_width, &text_height);

 bool show_buttons = swaynag->details.offset > 0;
 int button_width = get_detailed_scroll_button_width(cairo, swaynag);
 if (show_buttons) {
  swaynag->details.width -= button_width;
  pango_layout_set_width(layout,
    (swaynag->details.width - padding * 2) * PANGO_SCALE);
 }

 uint32_t ideal_height;
 do {
  ideal_height = swaynag->details.y + text_height + decor + padding * 2;
  if (ideal_height > SWAYNAG_MAX_HEIGHT) {
   ideal_height = SWAYNAG_MAX_HEIGHT;

   if (!show_buttons) {
    show_buttons = 1;
    swaynag->details.width -= button_width;
    pango_layout_set_width(layout,
      (swaynag->details.width - padding * 2) * PANGO_SCALE);
   }
  }

  swaynag->details.height = ideal_height - swaynag->details.y - decor;
  pango_layout_set_height(layout,
    (swaynag->details.height - padding * 2) * PANGO_SCALE);
  pango_layout_set_ellipsize(layout, PANGO_ELLIPSIZE_END);
  pango_cairo_update_layout(cairo, layout);
  pango_layout_get_pixel_size(layout, &text_width, &text_height);
 } while (text_height != (swaynag->details.height - padding * 2));

 swaynag->details.visible_lines = pango_layout_get_line_count(layout);

 if (show_buttons) {
  swaynag->details.button_up.x =
   swaynag->details.x + swaynag->details.width;
  swaynag->details.button_up.y = swaynag->details.y;
  swaynag->details.button_up.width = button_width;
  swaynag->details.button_up.height = swaynag->details.height / 2;
  render_details_scroll_button(cairo, swaynag,
    &swaynag->details.button_up);

  swaynag->details.button_down.x =
   swaynag->details.x + swaynag->details.width;
  swaynag->details.button_down.y =
   swaynag->details.button_up.y + swaynag->details.button_up.height;
  swaynag->details.button_down.width = button_width;
  swaynag->details.button_down.height = swaynag->details.height / 2;
  render_details_scroll_button(cairo, swaynag,
    &swaynag->details.button_down);
 }

 cairo_set_source_u32(cairo, swaynag->type->border);
 cairo_rectangle(cairo, swaynag->details.x, swaynag->details.y,
   swaynag->details.width, swaynag->details.height);
 cairo_fill(cairo);

 cairo_move_to(cairo, swaynag->details.x + padding,
   swaynag->details.y + padding);
 cairo_set_source_u32(cairo, swaynag->type->text);
 pango_cairo_show_layout(cairo, layout);
 g_object_unref(layout);

 return ideal_height / swaynag->scale;
}
