
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct swaybar_workspace {int label; } ;
struct swaybar_output {int scale; scalar_t__ height; TYPE_1__* bar; } ;
struct swaybar_config {int height; int pango_markup; int font; } ;
typedef int cairo_t ;
struct TYPE_2__ {struct swaybar_config* config; } ;


 int BORDER_WIDTH ;
 int WS_HORIZONTAL_PADDING ;
 int WS_VERTICAL_PADDING ;
 int get_text_size (int *,int ,int*,int*,int *,int,int ,char*,int ) ;

__attribute__((used)) static uint32_t predict_workspace_button_length(cairo_t *cairo,
  struct swaybar_output *output,
  struct swaybar_workspace *ws) {
 struct swaybar_config *config = output->bar->config;

 int text_width, text_height;
 get_text_size(cairo, config->font, &text_width, &text_height, ((void*)0),
   output->scale, config->pango_markup, "%s", ws->label);

 int ws_vertical_padding = WS_VERTICAL_PADDING * output->scale;
 int ws_horizontal_padding = WS_HORIZONTAL_PADDING * output->scale;
 int border_width = BORDER_WIDTH * output->scale;

 uint32_t ideal_height = ws_vertical_padding * 2 + text_height
  + border_width * 2;
 uint32_t ideal_surface_height = ideal_height / output->scale;
 if (!output->bar->config->height &&
   output->height < ideal_surface_height) {
  return 0;
 }

 return ws_horizontal_padding * 2 + text_width + border_width * 2;
}
