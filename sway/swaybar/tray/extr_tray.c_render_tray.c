
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct swaybar_tray {TYPE_2__* items; } ;
struct swaybar_output {int scale; TYPE_1__* bar; scalar_t__ height; } ;
struct swaybar_config {int tray_padding; scalar_t__ tray_outputs; } ;
typedef int cairo_t ;
struct TYPE_4__ {int length; int * items; } ;
struct TYPE_3__ {struct swaybar_tray* tray; struct swaybar_config* config; } ;


 int cmp_output ;
 int list_seq_find (scalar_t__,int ,struct swaybar_output*) ;
 int render_sni (int *,struct swaybar_output*,double*,int ) ;

uint32_t render_tray(cairo_t *cairo, struct swaybar_output *output, double *x) {
 struct swaybar_config *config = output->bar->config;
 if (config->tray_outputs) {
  if (list_seq_find(config->tray_outputs, cmp_output, output) == -1) {
   return 0;
  }
 }

 if ((int) output->height*output->scale <= 2*config->tray_padding) {
  return 2*config->tray_padding + 1;
 }

 uint32_t max_height = 0;
 struct swaybar_tray *tray = output->bar->tray;
 for (int i = 0; i < tray->items->length; ++i) {
  uint32_t h = render_sni(cairo, output, x, tray->items->items[i]);
  if (h > max_height) {
   max_height = h;
  }
 }

 return max_height;
}
