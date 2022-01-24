#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ hProcess; scalar_t__ hThread; } ;
struct TYPE_6__ {int cb; scalar_t__ cbReserved2; int /*<<< orphan*/ * lpReserved2; int /*<<< orphan*/  wShowWindow; int /*<<< orphan*/  dwFlags; int /*<<< orphan*/ * lpReserved; } ;
typedef  int /*<<< orphan*/  StartupInfo ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_NEW_PROCESS_GROUP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  STARTF_USESHOWWINDOW ; 
 int /*<<< orphan*/  SW_SHOWDEFAULT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int*,intptr_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (scalar_t__) ; 
 char* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char const*) ; 
 char* FUNC14 (char*,char) ; 

int FUNC15(const char *command)
{
  char *szCmdLine = NULL;
  char *szComSpec = NULL;

  PROCESS_INFORMATION ProcessInformation;
  STARTUPINFOA StartupInfo;
  char *s;
  BOOL result;

  int nStatus;

  szComSpec = FUNC7("COMSPEC");

// system should return 0 if command is null and the shell is found

  if (command == NULL) {
    if (szComSpec == NULL)
      return 0;
    else
      return 1;
  }

  if (szComSpec == NULL)
    return -1;

// should return 127 or 0 ( MS ) if the shell is not found
// _set_errno(ENOENT);

  if (szComSpec == NULL)
  {
    szComSpec = "cmd.exe";
  }

  /* split the path from shell command */
  s = FUNC9(FUNC14(szComSpec, '\\'), FUNC14(szComSpec, '/'));
  if (s == NULL)
    s = szComSpec;
  else
    s++;

  szCmdLine = FUNC8(FUNC13(s) + 4 + FUNC13(command) + 1);
  if (szCmdLine == NULL)
  {
     FUNC5(ENOMEM);
     return -1;
  }

  FUNC12(szCmdLine, s);
  s = FUNC14(szCmdLine, '.');
  if (s)
    *s = 0;
  FUNC11(szCmdLine, " /C ");
  FUNC11(szCmdLine, command);

//command file has invalid format ENOEXEC

  FUNC10 (&StartupInfo, 0, sizeof(StartupInfo));
  StartupInfo.cb = sizeof(StartupInfo);
  StartupInfo.lpReserved= NULL;
  StartupInfo.dwFlags = STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow = SW_SHOWDEFAULT;
  StartupInfo.lpReserved2 = NULL;
  StartupInfo.cbReserved2 = 0;

// According to ansi standards the new process should ignore  SIGINT and SIGQUIT
// In order to disable ctr-c the process is created with CREATE_NEW_PROCESS_GROUP,
// thus SetConsoleCtrlHandler(NULL,TRUE) is made on behalf of the new process.


//SIGCHILD should be blocked aswell

  result = FUNC1(szComSpec,
	                  szCmdLine,
			  NULL,
			  NULL,
			  TRUE,
			  CREATE_NEW_PROCESS_GROUP,
			  NULL,
			  NULL,
			  &StartupInfo,
			  &ProcessInformation);
  FUNC6(szCmdLine);

  if (result == FALSE)
  {
	FUNC4(FUNC2());
     return -1;
  }

  FUNC0(ProcessInformation.hThread);

// system should wait untill the calling process is finished
  FUNC3(&nStatus,(intptr_t)ProcessInformation.hProcess,0);
  FUNC0(ProcessInformation.hProcess);

  return nStatus;
}