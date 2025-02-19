
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_output {scalar_t__ height; scalar_t__ width; } ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;
struct TYPE_2__ {scalar_t__ default_layout; scalar_t__ default_orientation; } ;


 int L_HORIZ ;
 scalar_t__ L_NONE ;
 int L_VERT ;
 TYPE_1__* config ;

enum sway_container_layout output_get_default_layout(
  struct sway_output *output) {
 if (config->default_layout != L_NONE) {
  return config->default_layout;
 }
 if (config->default_orientation != L_NONE) {
  return config->default_orientation;
 }
 if (output->height > output->width) {
  return L_VERT;
 }
 return L_HORIZ;
}
