#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  si ;
struct TYPE_11__ {scalar_t__ hProcess; scalar_t__ hThread; } ;
struct TYPE_10__ {int cb; scalar_t__ hStdError; scalar_t__ hStdOutput; scalar_t__ hStdInput; int /*<<< orphan*/  dwFlags; } ;
struct TYPE_9__ {scalar_t__ bStdOutput; scalar_t__ bStdError; scalar_t__ dwExitCode; int /*<<< orphan*/  line; scalar_t__ cmdline; } ;
typedef  TYPE_1__ TEST_ENTRY ;
typedef  TYPE_2__ STARTUPINFOA ;
typedef  TYPE_3__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  STARTF_USESTDHANDLES ; 
 int /*<<< orphan*/  TIMEOUT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(const TEST_ENTRY *pEntry)
{
    STARTUPINFOA si;
    PROCESS_INFORMATION pi;
    DWORD dwExitCode, dwWait;
    HANDLE hOutputRead = NULL;
    HANDLE hErrorRead = NULL;
    BYTE b;
    DWORD dwRead;
    BOOL bStdOutput, bStdError;

    FUNC7(&si, 0, sizeof(si));
    si.cb = sizeof(si);
    si.dwFlags = STARTF_USESTDHANDLES;

    if (!FUNC4(&si, NULL, &hOutputRead, &hErrorRead))
    {
        FUNC9("PrepareForRedirect failed\n");
        return;
    }

    if (FUNC1(NULL, (char *)pEntry->cmdline, NULL, NULL, TRUE, 0, NULL, NULL, &si, &pi))
    {
        FUNC0(si.hStdInput);
        dwWait = FUNC6(pi.hProcess, TIMEOUT);
        if (dwWait == WAIT_TIMEOUT)
        {
            FUNC5(pi.hProcess, 9999);
        }
        FUNC2(pi.hProcess, &dwExitCode);
        FUNC0(pi.hThread);
        FUNC0(pi.hProcess);
    }
    else
    {
        dwExitCode = 8888;
    }

    FUNC3(hOutputRead, &b, 1, &dwRead, NULL, NULL);
    bStdOutput = dwRead != 0;
    FUNC3(hErrorRead, &b, 1, &dwRead, NULL, NULL);
    bStdError = dwRead != 0;

    if (si.hStdInput)
        FUNC0(si.hStdInput);
    if (si.hStdOutput)
        FUNC0(si.hStdOutput);
    if (si.hStdError)
        FUNC0(si.hStdError);

    FUNC8(pEntry->bStdOutput == bStdOutput,
       "Line %u: bStdOutput %d vs %d\n",
       pEntry->line, pEntry->bStdOutput, bStdOutput);

    FUNC8(pEntry->bStdError == bStdError,
       "Line %u: bStdError %d vs %d\n",
       pEntry->line, pEntry->bStdError, bStdError);

    FUNC8(pEntry->dwExitCode == dwExitCode,
       "Line %u: dwExitCode %ld vs %ld\n",
       pEntry->line, pEntry->dwExitCode, dwExitCode);
}