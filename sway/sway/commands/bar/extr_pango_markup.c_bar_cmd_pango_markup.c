
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {int id; scalar_t__ pango_markup; } ;


 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_2__* config ;
 scalar_t__ parse_boolean (char*,scalar_t__) ;
 int sway_log (int ,char*,int ) ;

struct cmd_results *bar_cmd_pango_markup(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "pango_markup", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 config->current_bar->pango_markup =
  parse_boolean(argv[0], config->current_bar->pango_markup);
 if (config->current_bar->pango_markup) {
  sway_log(SWAY_DEBUG, "Enabling pango markup for bar: %s",
    config->current_bar->id);
 } else {
  sway_log(SWAY_DEBUG, "Disabling pango markup for bar: %s",
    config->current_bar->id);
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
