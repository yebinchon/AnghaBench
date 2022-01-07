
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;


 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 struct cmd_results* add_color (char*,char*) ;
 struct cmd_results* checkarg (int,char const*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 char* malloc (int) ;

__attribute__((used)) static struct cmd_results *parse_single_color(char **color,
  const char *cmd_name, int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, cmd_name, EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 if (!*color && !(*color = malloc(10))) {
  return ((void*)0);
 }
 error = add_color(*color, argv[0]);
 if (error) {
  return error;
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
