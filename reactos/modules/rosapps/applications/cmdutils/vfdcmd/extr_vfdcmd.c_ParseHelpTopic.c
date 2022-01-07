
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* keyword; } ;


 int CMD_MATCH_MULTI ;
 int CMD_MATCH_NONE ;
 TYPE_1__* HelpMsg ;
 int MSG_AMBIGUOUS_COMMAND ;
 int MSG_UNKNOWN_COMMAND ;
 int PrintMessage (int ,char const*) ;
 int _strnicmp (char const*,char const*,size_t) ;
 int printf (char*,...) ;
 size_t strlen (char const*) ;

int ParseHelpTopic(const char *topic)
{
 size_t len;
 int idx;
 int match;

 if (*topic == '\0') {



  return CMD_MATCH_NONE;
 }


 len = strlen(topic);
 idx = 0;
 match = CMD_MATCH_NONE;

 while (HelpMsg[idx].keyword) {

  if (strlen(HelpMsg[idx].keyword) >= len &&
   !_strnicmp(topic, HelpMsg[idx].keyword, len)) {

   if (match == CMD_MATCH_NONE) {
    match = idx;
   }
   else {
    if (match != CMD_MATCH_MULTI) {
     PrintMessage(MSG_AMBIGUOUS_COMMAND, topic);
     printf("> %s ", HelpMsg[match].keyword);
     match = CMD_MATCH_MULTI;
    }

    printf("%s ", HelpMsg[idx].keyword);
   }
  }

  idx++;
 }

 if (match == CMD_MATCH_NONE) {
  PrintMessage(MSG_UNKNOWN_COMMAND, topic);
 }
 else if (match == CMD_MATCH_MULTI) {
  printf("\n");
 }

 return match;
}
