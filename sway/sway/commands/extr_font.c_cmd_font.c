
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {char* font; int pango_markup; } ;


 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_1__* config ;
 int config_update_font_height (int) ;
 int free (char*) ;
 char* join_args (char**,int) ;
 void* strdup (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

struct cmd_results *cmd_font(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "font", EXPECTED_AT_LEAST, 1))) {
  return error;
 }
 char *font = join_args(argv, argc);
 free(config->font);

 if (strncmp(font, "pango:", 6) == 0) {
  config->pango_markup = 1;
  config->font = strdup(font + 6);
 } else {
  config->pango_markup = 0;
  config->font = strdup(font);
 }

 free(font);
 config_update_font_height(1);
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
