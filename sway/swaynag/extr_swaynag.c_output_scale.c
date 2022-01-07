
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wl_output {int dummy; } ;
struct swaynag_output {TYPE_1__* swaynag; int scale; } ;
typedef int int32_t ;
struct TYPE_3__ {int scale; struct swaynag_output* output; } ;


 int render_frame (TYPE_1__*) ;
 int update_cursor (TYPE_1__*) ;

__attribute__((used)) static void output_scale(void *data, struct wl_output *output,
  int32_t factor) {
 struct swaynag_output *swaynag_output = data;
 swaynag_output->scale = factor;
 if (swaynag_output->swaynag->output == swaynag_output) {
  swaynag_output->swaynag->scale = swaynag_output->scale;
  update_cursor(swaynag_output->swaynag);
  render_frame(swaynag_output->swaynag);
 }
}
