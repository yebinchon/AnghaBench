
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct swaybar_output {int scale; scalar_t__ height; TYPE_1__* bar; } ;
struct swaybar_config {double status_padding; int status_edge_padding; int height; int * sep_symbol; int font; } ;
struct i3bar_block {int markup; int min_width; int border_left; int border_right; int separator_block_width; scalar_t__ urgent; scalar_t__ border; int * min_width_str; int * full_text; } ;
typedef int cairo_t ;
struct TYPE_2__ {struct swaybar_config* config; } ;


 int get_text_size (int *,int ,int*,int*,int *,int,int,char*,int *) ;

__attribute__((used)) static void predict_status_block_pos(cairo_t *cairo,
  struct swaybar_output *output, struct i3bar_block *block, double *x,
  bool edge) {
 if (!block->full_text || !*block->full_text) {
  return;
 }

 struct swaybar_config *config = output->bar->config;

 int text_width, text_height;
 get_text_size(cairo, config->font, &text_width, &text_height, ((void*)0),
   output->scale, block->markup, "%s", block->full_text);

 int margin = 3 * output->scale;
 double ws_vertical_padding = config->status_padding * output->scale;

 int width = text_width;

 if (block->min_width_str) {
  int w;
  get_text_size(cairo, config->font, &w, ((void*)0), ((void*)0),
    output->scale, block->markup, "%s", block->min_width_str);
  block->min_width = w;
 }
 if (width < block->min_width) {
  width = block->min_width;
 }

 uint32_t ideal_height = text_height + ws_vertical_padding * 2;
 uint32_t ideal_surface_height = ideal_height / output->scale;
 if (!output->bar->config->height &&
   output->height < ideal_surface_height) {
  return;
 }

 *x -= width;
 if ((block->border || block->urgent) && block->border_left > 0) {
  *x -= (block->border_left * output->scale + margin);
 }
 if ((block->border || block->urgent) && block->border_right > 0) {
  *x -= (block->border_right * output->scale + margin);
 }

 int sep_width, sep_height;
 int sep_block_width = block->separator_block_width;
 if (!edge) {
  if (config->sep_symbol) {
   get_text_size(cairo, config->font, &sep_width, &sep_height, ((void*)0),
     output->scale, 0, "%s", config->sep_symbol);
   uint32_t _ideal_height = sep_height + ws_vertical_padding * 2;
   uint32_t _ideal_surface_height = _ideal_height / output->scale;
   if (!output->bar->config->height &&
     output->height < _ideal_surface_height) {
    return;
   }
   if (sep_width > sep_block_width) {
    sep_block_width = sep_width + margin * 2;
   }
  }
  *x -= sep_block_width;
 } else if (config->status_edge_padding) {
  *x -= config->status_edge_padding * output->scale;
 }
}
