
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {int status_padding; int id; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_2__* config ;
 scalar_t__ strlen (char*) ;
 int strtol (char*,char**,int) ;
 int sway_log (int ,char*,int ,int) ;

struct cmd_results *bar_cmd_status_padding(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "status_padding", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 char *end;
 int padding = strtol(argv[0], &end, 10);
 if (strlen(end) || padding < 0) {
  return cmd_results_new(CMD_INVALID,
    "Padding must be a positive integer");
 }
 config->current_bar->status_padding = padding;
 sway_log(SWAY_DEBUG, "Status padding on bar %s: %d",
   config->current_bar->id, config->current_bar->status_padding);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
