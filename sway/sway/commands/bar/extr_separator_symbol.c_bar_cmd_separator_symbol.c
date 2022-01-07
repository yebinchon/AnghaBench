
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {int id; int separator_symbol; } ;


 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_2__* config ;
 int free (int ) ;
 int strdup (char*) ;
 int sway_log (int ,char*,int ,int ) ;

struct cmd_results *bar_cmd_separator_symbol(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "separator_symbol", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 free(config->current_bar->separator_symbol);
 config->current_bar->separator_symbol = strdup(argv[0]);
 sway_log(SWAY_DEBUG, "Settings separator_symbol '%s' for bar: %s",
   config->current_bar->separator_symbol, config->current_bar->id);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
