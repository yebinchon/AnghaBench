
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hProcess; scalar_t__ hThread; } ;
struct TYPE_6__ {int cb; scalar_t__ cbReserved2; int * lpReserved2; int wShowWindow; int dwFlags; int * lpReserved; } ;
typedef int StartupInfo ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef scalar_t__ BOOL ;


 int CREATE_NEW_PROCESS_GROUP ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateProcessA (char*,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int ENOMEM ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int STARTF_USESHOWWINDOW ;
 int SW_SHOWDEFAULT ;
 int TRUE ;
 int _cwait (int*,intptr_t,int ) ;
 int _dosmaperr (int ) ;
 int _set_errno (int ) ;
 int free (char*) ;
 char* getenv (char*) ;
 char* malloc (scalar_t__) ;
 char* max (char*,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char const*) ;
 char* strrchr (char*,char) ;

int system(const char *command)
{
  char *szCmdLine = ((void*)0);
  char *szComSpec = ((void*)0);

  PROCESS_INFORMATION ProcessInformation;
  STARTUPINFOA StartupInfo;
  char *s;
  BOOL result;

  int nStatus;

  szComSpec = getenv("COMSPEC");



  if (command == ((void*)0)) {
    if (szComSpec == ((void*)0))
      return 0;
    else
      return 1;
  }

  if (szComSpec == ((void*)0))
    return -1;




  if (szComSpec == ((void*)0))
  {
    szComSpec = "cmd.exe";
  }


  s = max(strrchr(szComSpec, '\\'), strrchr(szComSpec, '/'));
  if (s == ((void*)0))
    s = szComSpec;
  else
    s++;

  szCmdLine = malloc(strlen(s) + 4 + strlen(command) + 1);
  if (szCmdLine == ((void*)0))
  {
     _set_errno(ENOMEM);
     return -1;
  }

  strcpy(szCmdLine, s);
  s = strrchr(szCmdLine, '.');
  if (s)
    *s = 0;
  strcat(szCmdLine, " /C ");
  strcat(szCmdLine, command);



  memset (&StartupInfo, 0, sizeof(StartupInfo));
  StartupInfo.cb = sizeof(StartupInfo);
  StartupInfo.lpReserved= ((void*)0);
  StartupInfo.dwFlags = STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow = SW_SHOWDEFAULT;
  StartupInfo.lpReserved2 = ((void*)0);
  StartupInfo.cbReserved2 = 0;
  result = CreateProcessA(szComSpec,
                   szCmdLine,
     ((void*)0),
     ((void*)0),
     TRUE,
     CREATE_NEW_PROCESS_GROUP,
     ((void*)0),
     ((void*)0),
     &StartupInfo,
     &ProcessInformation);
  free(szCmdLine);

  if (result == FALSE)
  {
 _dosmaperr(GetLastError());
     return -1;
  }

  CloseHandle(ProcessInformation.hThread);


  _cwait(&nStatus,(intptr_t)ProcessInformation.hProcess,0);
  CloseHandle(ProcessInformation.hProcess);

  return nStatus;
}
