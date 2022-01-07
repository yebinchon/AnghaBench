
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_output {struct sway_output* data; } ;
struct sway_output {int dummy; } ;



struct sway_output *output_from_wlr_output(struct wlr_output *output) {
 return output->data;
}
