
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct swaybar_output {scalar_t__ height; scalar_t__ scale; TYPE_3__* bar; } ;
typedef int cairo_t ;
struct TYPE_6__ {TYPE_2__* config; TYPE_1__* status; } ;
struct TYPE_5__ {double status_padding; char* font; int height; } ;
struct TYPE_4__ {char* text; } ;


 int cairo_move_to (int *,double,int) ;
 int cairo_set_source_u32 (int *,int) ;
 scalar_t__ floor (double) ;
 int get_text_size (int *,char*,int*,int*,int *,double,int,char*,char const*) ;
 int pango_printf (int *,char*,scalar_t__,int,char*,char const*) ;

__attribute__((used)) static uint32_t render_status_line_error(cairo_t *cairo,
  struct swaybar_output *output, double *x) {
 const char *error = output->bar->status->text;
 if (!error) {
  return 0;
 }

 uint32_t height = output->height * output->scale;

 cairo_set_source_u32(cairo, 0xFF0000FF);

 int margin = 3 * output->scale;
 double ws_vertical_padding =
  output->bar->config->status_padding * output->scale;

 char *font = output->bar->config->font;
 int text_width, text_height;
 get_text_size(cairo, font, &text_width, &text_height, ((void*)0),
   output->scale, 0, "%s", error);

 uint32_t ideal_height = text_height + ws_vertical_padding * 2;
 uint32_t ideal_surface_height = ideal_height / output->scale;
 if (!output->bar->config->height &&
   output->height < ideal_surface_height) {
  return ideal_surface_height;
 }
 *x -= text_width + margin;

 double text_y = height / 2.0 - text_height / 2.0;
 cairo_move_to(cairo, *x, (int)floor(text_y));
 pango_printf(cairo, font, output->scale, 0, "%s", error);
 *x -= margin;
 return output->height;
}
