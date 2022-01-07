
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_bar; } ;
struct TYPE_3__ {char* font; int id; } ;


 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int SWAY_DEBUG ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_2__* config ;
 int free (char*) ;
 char* join_args (char**,int) ;
 int sway_log (int ,char*,char*,int ) ;

struct cmd_results *bar_cmd_font(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "font", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 char *font = join_args(argv, argc);
 free(config->current_bar->font);
 config->current_bar->font = font;
 sway_log(SWAY_DEBUG, "Settings font '%s' for bar: %s",
   config->current_bar->font, config->current_bar->id);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
