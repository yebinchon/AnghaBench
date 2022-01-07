
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_output {scalar_t__ damage; scalar_t__ wlr_output; } ;


 int wlr_output_damage_add_whole (scalar_t__) ;

void output_damage_whole(struct sway_output *output) {


 if (output && output->wlr_output && output->damage) {
  wlr_output_damage_add_whole(output->damage);
 }
}
