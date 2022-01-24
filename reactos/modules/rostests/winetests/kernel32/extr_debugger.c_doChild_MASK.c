#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct child_blackbox {int /*<<< orphan*/  failures; } ;
typedef  int /*<<< orphan*/  blackbox ;
struct TYPE_4__ {TYPE_1__* Peb; } ;
struct TYPE_3__ {int /*<<< orphan*/  BeingDebugged; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCESS_QUERY_INFORMATION ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  child_failures ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char const*,struct child_blackbox*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(int argc, char **argv)
{
    struct child_blackbox blackbox;
    const char *blackbox_file;
    HANDLE parent;
    DWORD ppid;
    BOOL debug;
    BOOL ret;

    blackbox_file = argv[4];
    FUNC11(argv[3], "%08x", &ppid);

    parent = FUNC5(PROCESS_QUERY_INFORMATION, FALSE, ppid);
    FUNC6(!!parent, "OpenProcess failed, last error %#x.\n", FUNC3());

    ret = FUNC7(parent, &debug);
    FUNC6(ret, "CheckRemoteDebuggerPresent failed, last error %#x.\n", FUNC3());
    FUNC6(!debug, "Expected debug == 0, got %#x.\n", debug);

    ret = FUNC1(ppid);
    FUNC6(ret, "DebugActiveProcess failed, last error %#x.\n", FUNC3());

    ret = FUNC7(parent, &debug);
    FUNC6(ret, "CheckRemoteDebuggerPresent failed, last error %#x.\n", FUNC3());
    FUNC6(debug, "Expected debug != 0, got %#x.\n", debug);

    ret = FUNC8(ppid);
    FUNC6(ret, "DebugActiveProcessStop failed, last error %#x.\n", FUNC3());

    ret = FUNC7(parent, &debug);
    FUNC6(ret, "CheckRemoteDebuggerPresent failed, last error %#x.\n", FUNC3());
    FUNC6(!debug, "Expected debug == 0, got %#x.\n", debug);

    ret = FUNC0(parent);
    FUNC6(ret, "CloseHandle failed, last error %#x.\n", FUNC3());

    ret = FUNC9();
    FUNC6(ret, "Expected ret != 0, got %#x.\n", ret);
    ret = FUNC7(FUNC2(), &debug);
    FUNC6(ret, "CheckRemoteDebuggerPresent failed, last error %#x.\n", FUNC3());
    FUNC6(debug, "Expected debug != 0, got %#x.\n", debug);

    FUNC4()->Peb->BeingDebugged = FALSE;

    ret = FUNC9();
    FUNC6(!ret, "Expected ret != 0, got %#x.\n", ret);
    ret = FUNC7(FUNC2(), &debug);
    FUNC6(ret, "CheckRemoteDebuggerPresent failed, last error %#x.\n", FUNC3());
    FUNC6(debug, "Expected debug != 0, got %#x.\n", debug);

    FUNC4()->Peb->BeingDebugged = TRUE;

    blackbox.failures = child_failures;
    FUNC10(blackbox_file, &blackbox, sizeof(blackbox));
}