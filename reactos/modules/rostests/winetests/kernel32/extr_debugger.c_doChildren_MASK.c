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
struct child_blackbox {int /*<<< orphan*/  failures; } ;
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  blackbox ;
struct TYPE_7__ {int /*<<< orphan*/ * hProcess; int /*<<< orphan*/ * hThread; } ;
struct TYPE_6__ {int cb; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  EVENT_ALL_ACCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int INFINITE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  child_failures ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*,struct child_blackbox*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 scalar_t__ FUNC16 (char const*) ; 
 char* FUNC17 (char const*,char) ; 

__attribute__((used)) static void FUNC18(int argc, char **argv)
{
    const char *arguments = "debugger children last";
    struct child_blackbox blackbox;
    const char *blackbox_file, *p;
    char event_name[MAX_PATH];
    PROCESS_INFORMATION pi;
    STARTUPINFOA si;
    HANDLE event;
    char *cmd;
    BOOL ret;

    if (!FUNC14(argv[3], "last")) return;

    blackbox_file = argv[3];

    p = FUNC17(blackbox_file, '\\');
    p = p ? p+1 : blackbox_file;
    FUNC15(event_name, p);
    FUNC13(event_name, "_init");
    event = FUNC6(EVENT_ALL_ACCESS, FALSE, event_name);
    FUNC9(event != NULL, "OpenEvent failed, last error %d.\n", FUNC2());
    FUNC7(event);
    FUNC0(event);

    p = FUNC17(blackbox_file, '\\');
    p = p ? p+1 : blackbox_file;
    FUNC15(event_name, p);
    FUNC13(event_name, "_attach");
    event = FUNC6(EVENT_ALL_ACCESS, FALSE, event_name);
    FUNC9(event != NULL, "OpenEvent failed, last error %d.\n", FUNC2());
    FUNC8(event, INFINITE);
    FUNC0(event);

    cmd = FUNC4(FUNC3(), 0, FUNC16(argv[0]) + FUNC16(arguments) + 2);
    FUNC12(cmd, "%s %s", argv[0], arguments);

    FUNC10(&si, 0, sizeof(si));
    si.cb = sizeof(si);
    ret = FUNC1(NULL, cmd, NULL, NULL, FALSE, 0, NULL, NULL, &si, &pi);
    FUNC9(ret, "CreateProcess failed, last error %d.\n", FUNC2());

    FUNC9(FUNC8(pi.hProcess, 10000) == WAIT_OBJECT_0,
            "Timed out waiting for the child to exit\n");

    ret = FUNC0(pi.hThread);
    FUNC9(ret, "CloseHandle failed, last error %d.\n", FUNC2());
    ret = FUNC0(pi.hProcess);
    FUNC9(ret, "CloseHandle failed, last error %d.\n", FUNC2());

    blackbox.failures = child_failures;
    FUNC11(blackbox_file, &blackbox, sizeof(blackbox));

    FUNC5(FUNC3(), 0, cmd);
}