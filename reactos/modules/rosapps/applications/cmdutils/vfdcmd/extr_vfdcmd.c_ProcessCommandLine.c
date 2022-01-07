
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_args; int (* func ) (char const**) ;int hint; } ;
typedef scalar_t__ DWORD ;


 TYPE_1__* Commands ;
 scalar_t__ ERROR_SUCCESS ;
 int MSG_GET_STAT_NG ;
 int MSG_TOO_MANY_ARGS ;
 int ParseCommand (char const*) ;
 int PrintMessage (int ) ;
 char* SystemError (scalar_t__) ;
 int VFD_NG ;
 scalar_t__ VfdGetDriverState (int *) ;
 int _stricmp (char const*,char*) ;
 int driver_state ;
 int printf (char*,char*) ;
 int strcmp (char const*,char*) ;
 int stub1 (char const**) ;

int ProcessCommandLine(int argc, const char **args)
{
 int cmd;
 DWORD ret;




 cmd = ParseCommand(*args);

 if (cmd < 0) {



  return VFD_NG;
 }

 if (*(++args) &&
  (!strcmp(*args, "/?") ||
  !_stricmp(*args, "/h"))) {



  PrintMessage(Commands[cmd].hint);
  return VFD_NG;
 }

 if (--argc > Commands[cmd].max_args) {



  PrintMessage(MSG_TOO_MANY_ARGS);
  PrintMessage(Commands[cmd].hint);
  return VFD_NG;
 }



 ret = VfdGetDriverState(&driver_state);

 if (ret != ERROR_SUCCESS) {
  PrintMessage(MSG_GET_STAT_NG);
  printf("%s", SystemError(ret));
  return VFD_NG;
 }



 return (*Commands[cmd].func)(args);
}
