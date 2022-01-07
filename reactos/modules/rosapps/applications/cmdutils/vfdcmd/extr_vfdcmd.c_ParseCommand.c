
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* cmd; } ;


 int CMD_MATCH_MULTI ;
 int CMD_MATCH_NONE ;
 TYPE_1__* Commands ;
 int MSG_AMBIGUOUS_COMMAND ;
 int MSG_UNKNOWN_COMMAND ;
 int PrintMessage (int ,char const*) ;
 int _strnicmp (char const*,char const*,size_t) ;
 int printf (char*,...) ;
 size_t strlen (char const*) ;

int ParseCommand(const char *cmd)
{



 size_t len;
 int idx;
 int match;



 if (*cmd == '/') {
  cmd++;
 }

 if (*cmd == '\0') {



  return -1;
 }


 len = strlen(cmd);
 idx = 0;
 match = -1;

 while (Commands[idx].cmd) {

  if (strlen(Commands[idx].cmd) >= len &&
   !_strnicmp(cmd, Commands[idx].cmd, len)) {

   if (match == -1) {
    match = idx;
   }
   else {
    if (match != -2) {
     PrintMessage(MSG_AMBIGUOUS_COMMAND, cmd);
     printf("> %s ", Commands[match].cmd);
     match = -2;
    }

    printf("%s ", Commands[idx].cmd);
   }
  }

  idx++;
 }

 if (match == -1) {
  PrintMessage(MSG_UNKNOWN_COMMAND, cmd);
 }
 else if (match == -2) {
  printf("\n");
 }

 return match;
}
