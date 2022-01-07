
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct swaybar_output {int scale; scalar_t__ height; TYPE_3__* bar; } ;
struct TYPE_4__ {int text; int border; int background; } ;
struct TYPE_5__ {TYPE_1__ binding_mode; } ;
struct swaybar_config {int font; TYPE_2__ colors; int height; } ;
typedef int cairo_t ;
struct TYPE_6__ {char* mode; int mode_pango_markup; struct swaybar_config* config; } ;


 int BORDER_WIDTH ;
 int WS_HORIZONTAL_PADDING ;
 int WS_VERTICAL_PADDING ;
 int cairo_fill (int *) ;
 int cairo_move_to (int *,double,int) ;
 int cairo_rectangle (int *,double,scalar_t__,scalar_t__,int) ;
 int cairo_set_source_u32 (int *,int ) ;
 scalar_t__ floor (double) ;
 int get_text_size (int *,int ,int*,int*,int *,int,int ,char*,char const*) ;
 int pango_printf (int *,int ,scalar_t__,int ,char*,char const*) ;

__attribute__((used)) static uint32_t render_binding_mode_indicator(cairo_t *cairo,
  struct swaybar_output *output, double x) {
 const char *mode = output->bar->mode;
 if (!mode) {
  return 0;
 }

 struct swaybar_config *config = output->bar->config;
 int text_width, text_height;
 get_text_size(cairo, config->font, &text_width, &text_height, ((void*)0),
   output->scale, output->bar->mode_pango_markup,
   "%s", mode);

 int ws_vertical_padding = WS_VERTICAL_PADDING * output->scale;
 int ws_horizontal_padding = WS_HORIZONTAL_PADDING * output->scale;
 int border_width = BORDER_WIDTH * output->scale;

 uint32_t ideal_height = text_height + ws_vertical_padding * 2
  + border_width * 2;
 uint32_t ideal_surface_height = ideal_height / output->scale;
 if (!output->bar->config->height &&
   output->height < ideal_surface_height) {
  return ideal_surface_height;
 }
 uint32_t width = text_width + ws_horizontal_padding * 2 + border_width * 2;

 uint32_t height = output->height * output->scale;
 cairo_set_source_u32(cairo, config->colors.binding_mode.background);
 cairo_rectangle(cairo, x, 0, width, height);
 cairo_fill(cairo);

 cairo_set_source_u32(cairo, config->colors.binding_mode.border);
 cairo_rectangle(cairo, x, 0, width, border_width);
 cairo_fill(cairo);
 cairo_rectangle(cairo, x, 0, border_width, height);
 cairo_fill(cairo);
 cairo_rectangle(cairo, x + width - border_width, 0, border_width, height);
 cairo_fill(cairo);
 cairo_rectangle(cairo, x, height - border_width, width, border_width);
 cairo_fill(cairo);

 double text_y = height / 2.0 - text_height / 2.0;
 cairo_set_source_u32(cairo, config->colors.binding_mode.text);
 cairo_move_to(cairo, x + width / 2 - text_width / 2, (int)floor(text_y));
 pango_printf(cairo, config->font, output->scale,
   output->bar->mode_pango_markup, "%s", mode);
 return output->height;
}
