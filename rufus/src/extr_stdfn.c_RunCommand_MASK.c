#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  si ;
struct TYPE_9__ {int /*<<< orphan*/  hThread; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int member_0; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_7__ {int cb; int dwFlags; void* hStdError; void* hStdOutput; int /*<<< orphan*/  wShowWindow; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ SECURITY_ATTRIBUTES ;
typedef  TYPE_3__ PROCESS_INFORMATION ;
typedef  void* HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CREATE_NO_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,void**,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char const*,TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  INFINITE ; 
 void* INVALID_HANDLE_VALUE ; 
 int NORMAL_PRIORITY_CLASS ; 
 scalar_t__ FUNC5 (void*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (void*,char*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int STARTF_PREVENTPINNING ; 
 int STARTF_TITLEISAPPID ; 
 int STARTF_USESHOWWINDOW ; 
 int STARTF_USESTDHANDLES ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

DWORD FUNC14(const char* cmd, const char* dir, BOOL log)
{
	DWORD ret, dwRead, dwAvail, dwPipeSize = 4096;
	STARTUPINFOA si = {0};
	PROCESS_INFORMATION pi = {0};
	SECURITY_ATTRIBUTES sa = { sizeof(SECURITY_ATTRIBUTES), NULL, &TRUE };
	HANDLE hOutputRead = INVALID_HANDLE_VALUE, hOutputWrite = INVALID_HANDLE_VALUE;
	static char* output;

	si.cb = sizeof(si);
	if (log) {
		// NB: The size of a pipe is a suggestion, NOT an absolute guarantee
		// This means that you may get a pipe of 4K even if you requested 1K
		if (!FUNC1(&hOutputRead, &hOutputWrite, &sa, dwPipeSize)) {
			ret = FUNC4();
			FUNC13("Could not set commandline pipe: %s", FUNC9());
			goto out;
		}
		si.dwFlags = STARTF_USESHOWWINDOW | STARTF_USESTDHANDLES | STARTF_PREVENTPINNING | STARTF_TITLEISAPPID;
		si.wShowWindow = SW_HIDE;
		si.hStdOutput = hOutputWrite;
		si.hStdError = hOutputWrite;
	}

	if (!FUNC2(NULL, cmd, NULL, NULL, TRUE,
		NORMAL_PRIORITY_CLASS | CREATE_NO_WINDOW, NULL, dir, &si, &pi)) {
		ret = FUNC4();
		FUNC13("Unable to launch command '%s': %s", cmd, FUNC9());
		goto out;
	}

	if (log) {
		while (1) {
			// coverity[string_null]
			if (FUNC5(hOutputRead, NULL, dwPipeSize, NULL, &dwAvail, NULL)) {
				if (dwAvail != 0) {
					output = FUNC11(dwAvail + 1);
					if ((output != NULL) && (FUNC6(hOutputRead, output, dwAvail, &dwRead, NULL)) && (dwRead != 0)) {
						output[dwAvail] = 0;
						// coverity[tainted_string]
						FUNC13(output);
					}
					FUNC10(output);
				}
			}
			if (FUNC8(pi.hProcess, 0) == WAIT_OBJECT_0)
				break;
			FUNC7(100);
		};
	} else {
		FUNC8(pi.hProcess, INFINITE);
	}

	if (!FUNC3(pi.hProcess, &ret))
		ret = FUNC4();
	FUNC0(pi.hProcess);
	FUNC0(pi.hThread);

out:
	FUNC12(hOutputWrite);
	FUNC12(hOutputRead);
	return ret;
}