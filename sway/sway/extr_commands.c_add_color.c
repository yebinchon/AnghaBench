
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;


 int CMD_INVALID ;
 struct cmd_results* cmd_results_new (int ,char*,char const*) ;
 int isxdigit (char const) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

struct cmd_results *add_color(char *buffer, const char *color) {
 int len = strlen(color);
 if (len != 7 && len != 9) {
  return cmd_results_new(CMD_INVALID,
    "Invalid color definition %s", color);
 }
 if (color[0] != '#') {
  return cmd_results_new(CMD_INVALID,
    "Invalid color definition %s", color);
 }
 for (int i = 1; i < len; ++i) {
  if (!isxdigit(color[i])) {
   return cmd_results_new(CMD_INVALID,
     "Invalid color definition %s", color);
  }
 }
 strcpy(buffer, color);

 if (len == 7) {
  buffer[7] = 'f';
  buffer[8] = 'f';
 }
 buffer[9] = '\0';
 return ((void*)0);
}
