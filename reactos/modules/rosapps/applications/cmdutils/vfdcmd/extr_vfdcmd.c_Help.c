
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_2__ {int help; } ;
typedef int LPTSTR ;
typedef int DWORD ;


 int ConsolePager (char*,int ) ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ;
 int FORMAT_MESSAGE_FROM_HMODULE ;
 int FormatMessage (int,int *,int ,int ,int ,int ,int *) ;
 int GetLastError () ;
 TYPE_1__* HelpMsg ;
 int LocalFree (char*) ;
 int MSG_HELP_GENERAL ;
 int MSG_HELP_HELP ;
 int ParseHelpTopic (char const*) ;
 char* SystemError (int ) ;
 int TRUE ;
 int VFD_NG ;
 int VFD_OK ;
 int help_progname ;
 int printf (char*,char*) ;

int Help(const char **args)
{
 DWORD msg = MSG_HELP_GENERAL;
 char *buf = ((void*)0);

 if (args && *args) {
  int cmd = ParseHelpTopic(*args);

  if (cmd < 0) {
   msg = MSG_HELP_HELP;
  }
  else {
   msg = HelpMsg[cmd].help;
  }
 }

 FormatMessage(
  FORMAT_MESSAGE_FROM_HMODULE |
  FORMAT_MESSAGE_ALLOCATE_BUFFER |
  FORMAT_MESSAGE_ARGUMENT_ARRAY,
  ((void*)0), msg, 0, (LPTSTR)&buf, 0,
  (va_list *)&help_progname);

 if (buf == ((void*)0)) {
  printf("%s", SystemError(GetLastError()));
  return VFD_NG;
 }

 ConsolePager(buf, TRUE);
 LocalFree(buf);

 return VFD_OK;
}
