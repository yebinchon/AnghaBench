
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {scalar_t__ reading; } ;


 int SWAY_INFO ;
 struct cmd_results* cmd_default_floating_border (int,char**) ;
 TYPE_1__* config ;
 int config_add_swaynag_warning (char*) ;
 int sway_log (int ,char*) ;

struct cmd_results *cmd_new_float(int argc, char **argv) {
 sway_log(SWAY_INFO, "Warning: new_float is deprecated. "
  "Use default_floating_border instead.");
 if (config->reading) {
  config_add_swaynag_warning("new_float is deprecated. "
   "Use default_floating_border instead.");
 }
 return cmd_default_floating_border(argc, argv);
}
