
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_6__ {TYPE_2__* current_bar; } ;
struct TYPE_4__ {int focused_separator; } ;
struct TYPE_5__ {TYPE_1__ colors; } ;


 TYPE_3__* config ;
 struct cmd_results* parse_single_color (int *,char*,int,char**) ;

struct cmd_results *bar_colors_cmd_focused_separator(int argc, char **argv) {
 return parse_single_color(&(config->current_bar->colors.focused_separator),
   "focused_separator", argc, argv);
}
