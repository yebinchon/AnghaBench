#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int /*<<< orphan*/  LPTHREAD_START_ROUTINE ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ ERROR_PIPE_CONNECTED ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ InstanceThread ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  PIPE_ACCESS_DUPLEX ; 
 int PIPE_READMODE_MESSAGE ; 
 int /*<<< orphan*/  PIPE_TIMEOUT ; 
 int PIPE_TYPE_MESSAGE ; 
 int /*<<< orphan*/  PIPE_UNLIMITED_INSTANCES ; 
 int PIPE_WAIT ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(int argc, char *argv[])
{
   BOOL fConnected;
   DWORD dwThreadId;
   HANDLE hPipe, hThread;
   LPTSTR lpszPipename = FUNC7("\\\\.\\pipe\\mynamedpipe");

//   for (;;)
//     {
	hPipe = FUNC2(lpszPipename,
				PIPE_ACCESS_DUPLEX,
				PIPE_TYPE_MESSAGE |
				PIPE_READMODE_MESSAGE |
				PIPE_WAIT,
				PIPE_UNLIMITED_INSTANCES,
				BUFSIZE,
				BUFSIZE,
				PIPE_TIMEOUT,
				NULL);
	if (hPipe == INVALID_HANDLE_VALUE)
	  {
	     FUNC8("CreateNamedPipe() failed\n");
	     return 0;
	  }

	fConnected = FUNC1(hPipe,
				      NULL) ? TRUE : (FUNC5 () ==
					    ERROR_PIPE_CONNECTED);
	if (fConnected)
	  {
	     FUNC8("Pipe connected!\n");

	     FUNC4(hPipe);

#if 0
	     hThread = CreateThread(NULL,
				    0,
				    (LPTHREAD_START_ROUTINE) InstanceThread,
				    (LPVOID) hPipe,
				    0,
				    &dwThreadId);
	     if (hThread == NULL)
	       MyErrExit("CreateThread");
#endif
	  }
	else
	  {
//	     CloseHandle(hPipe);
	  }
//     }

   FUNC0(hPipe);

   return 0;
}