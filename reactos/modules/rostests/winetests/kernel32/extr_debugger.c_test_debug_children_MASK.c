#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct child_blackbox {int failures; } ;
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  blackbox ;
struct TYPE_10__ {scalar_t__ dwDebugEventCode; scalar_t__ dwProcessId; int /*<<< orphan*/  dwThreadId; } ;
struct TYPE_9__ {scalar_t__ dwProcessId; int /*<<< orphan*/ * hProcess; int /*<<< orphan*/ * hThread; } ;
struct TYPE_8__ {int cb; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int DWORD ;
typedef  TYPE_3__ DEBUG_EVENT ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  DBG_CONTINUE ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (char*) ; 
 scalar_t__ EXIT_PROCESS_DEBUG_EVENT ; 
 int FALSE ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int MAX_PATH ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct child_blackbox*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,int) ; 
 int FUNC17 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  pDebugActiveProcessStop ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 scalar_t__ FUNC21 (char const*) ; 
 char* FUNC22 (char*,char) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

__attribute__((used)) static void FUNC24(char *name, DWORD flag, BOOL debug_child)
{
    const char *arguments = "debugger children";
    struct child_blackbox blackbox;
    char blackbox_file[MAX_PATH], *p;
    char event_name[MAX_PATH];
    PROCESS_INFORMATION pi;
    STARTUPINFOA si;
    HANDLE event_init, event_attach;
    char *cmd;
    BOOL debug, ret;
    BOOL got_child_event = FALSE;

    if (!pDebugActiveProcessStop || !&pCheckRemoteDebuggerPresent)
    {
        FUNC23("DebugActiveProcessStop or CheckRemoteDebuggerPresent not available, skipping test.\n");
        return;
    }

    FUNC13(blackbox_file);
    cmd = FUNC8(FUNC7(), 0, FUNC21(name) + FUNC21(arguments) + FUNC21(blackbox_file) + 5);
    FUNC18(cmd, "%s %s \"%s\"", name, arguments, blackbox_file);

    p = FUNC22(blackbox_file, '\\');
    p = p ? p+1 : blackbox_file;
    FUNC20(event_name, p);
    FUNC19(event_name, "_init");
    event_init = FUNC2(NULL, FALSE, FALSE, event_name);
    FUNC16(event_init != NULL, "OpenEvent failed, last error %d.\n", FUNC6());

    p = FUNC22(blackbox_file, '\\');
    p = p ? p+1 : blackbox_file;
    FUNC20(event_name, p);
    FUNC19(event_name, "_attach");
    event_attach = FUNC2(NULL, FALSE, flag!=0, event_name);
    FUNC16(event_attach != NULL, "CreateEvent failed, last error %d.\n", FUNC6());

    FUNC15(&si, 0, sizeof(si));
    si.cb = sizeof(si);

    ret = FUNC3(NULL, cmd, NULL, NULL, FALSE, flag, NULL, NULL, &si, &pi);
    FUNC16(ret, "CreateProcess failed, last error %d.\n", FUNC6());
    FUNC9(FUNC7(), 0, cmd);
    if (!flag)
    {
        FUNC12(event_init, INFINITE);
        ret = FUNC4(pi.dwProcessId);
        FUNC16(ret, "DebugActiveProcess failed, last error %d.\n", FUNC6());
        ret = FUNC10(event_attach);
        FUNC16(ret, "SetEvent failed, last error %d.\n", FUNC6());
    }

    ret = FUNC17(pi.hProcess, &debug);
    FUNC16(ret, "CheckRemoteDebuggerPresent failed, last error %d.\n", FUNC6());
    FUNC16(debug, "Expected debug != 0, got %x.\n", debug);

    for (;;)
    {
        DEBUG_EVENT ev;

        ret = FUNC11(&ev, INFINITE);
        FUNC16(ret, "WaitForDebugEvent failed, last error %d.\n", FUNC6());
        if (!ret) break;

        if (ev.dwDebugEventCode==EXIT_PROCESS_DEBUG_EVENT && ev.dwProcessId==pi.dwProcessId) break;
        else if (ev.dwProcessId != pi.dwProcessId) got_child_event = TRUE;

        ret = FUNC1(ev.dwProcessId, ev.dwThreadId, DBG_CONTINUE);
        FUNC16(ret, "ContinueDebugEvent failed, last error %d.\n", FUNC6());
        if (!ret) break;
    }
    if(debug_child)
        FUNC16(got_child_event, "didn't get any child events (flag: %x).\n", flag);
    else
        FUNC16(!got_child_event, "got child event (flag: %x).\n", flag);
    FUNC0(event_init);
    FUNC0(event_attach);

    ret = FUNC0(pi.hThread);
    FUNC16(ret, "CloseHandle failed, last error %d.\n", FUNC6());
    ret = FUNC0(pi.hProcess);
    FUNC16(ret, "CloseHandle failed, last error %d.\n", FUNC6());

    FUNC14(blackbox_file, &blackbox, sizeof(blackbox));
    FUNC16(!blackbox.failures, "Got %d failures from child process.\n", blackbox.failures);

    ret = FUNC5(blackbox_file);
    FUNC16(ret, "DeleteFileA failed, last error %d.\n", FUNC6());
}