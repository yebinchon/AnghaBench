
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_6__ {TYPE_2__* current_bar; } ;
struct TYPE_4__ {char* binding_mode_border; char* binding_mode_bg; char* binding_mode_text; } ;
struct TYPE_5__ {TYPE_1__ colors; } ;


 TYPE_3__* config ;
 struct cmd_results* parse_three_colors (char***,char*,int,char**) ;

struct cmd_results *bar_colors_cmd_binding_mode(int argc, char **argv) {
 char **colors[3] = {
  &(config->current_bar->colors.binding_mode_border),
  &(config->current_bar->colors.binding_mode_bg),
  &(config->current_bar->colors.binding_mode_text)
 };
 return parse_three_colors(colors, "binding_mode", argc, argv);
}
