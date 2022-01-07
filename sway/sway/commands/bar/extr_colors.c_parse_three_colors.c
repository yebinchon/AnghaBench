
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 struct cmd_results* add_color (char*,char*) ;
 struct cmd_results* cmd_results_new (int ,char*,...) ;
 char* malloc (int) ;

__attribute__((used)) static struct cmd_results *parse_three_colors(char ***colors,
  const char *cmd_name, int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if (argc != 3) {
  return cmd_results_new(CMD_INVALID,
    "Command '%s' requires exactly three color values", cmd_name);
 }
 for (size_t i = 0; i < 3; i++) {
  if (!*colors[i] && !(*(colors[i]) = malloc(10))) {
   return ((void*)0);
  }
  error = add_color(*(colors[i]), argv[i]);
  if (error) {
   return error;
  }
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
