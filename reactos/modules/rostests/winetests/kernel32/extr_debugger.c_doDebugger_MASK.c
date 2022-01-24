#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int argc; void* detach_rc; void* detach_err; scalar_t__ pid; void* nokill_rc; void* nokill_err; void* debug_rc; void* debug_err; void* attach_rc; void* attach_err; } ;
typedef  TYPE_1__ debugger_blackbox_t ;
typedef  int /*<<< orphan*/  blackbox ;
typedef  scalar_t__ INT_PTR ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  INFINITE ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * myARGV ; 
 void* FUNC7 (scalar_t__) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*,TYPE_1__*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(int argc, char** argv)
{
    const char* logfile;
    debugger_blackbox_t blackbox;
    HANDLE start_event = 0, done_event = 0, debug_event;

    blackbox.argc=argc;
    logfile=(argc >= 4 ? argv[3] : NULL);
    blackbox.pid=(argc >= 5 ? FUNC5(argv[4]) : 0);

    blackbox.attach_err=0;
    if (FUNC10(myARGV[2], "attach"))
    {
        blackbox.attach_rc=FUNC0(blackbox.pid);
        if (!blackbox.attach_rc)
            blackbox.attach_err=FUNC2();
    }
    else
        blackbox.attach_rc=TRUE;

    debug_event=(argc >= 6 ? (HANDLE)(INT_PTR)FUNC5(argv[5]) : NULL);
    blackbox.debug_err=0;
    if (debug_event && FUNC10(myARGV[2], "event"))
    {
        blackbox.debug_rc=FUNC3(debug_event);
        if (!blackbox.debug_rc)
            blackbox.debug_err=FUNC2();
    }
    else
        blackbox.debug_rc=TRUE;

    if (logfile)
    {
        FUNC6(logfile, &start_event, &done_event);
    }

    if (FUNC10(myARGV[2], "order"))
    {
        FUNC11("debugger: waiting for the start signal...\n");
        FUNC4(start_event, INFINITE);
    }

    blackbox.nokill_err=0;
    if (FUNC10(myARGV[2], "nokill"))
    {
        blackbox.nokill_rc=FUNC8(FALSE);
        if (!blackbox.nokill_rc)
            blackbox.nokill_err=FUNC2();
    }
    else
        blackbox.nokill_rc=TRUE;

    blackbox.detach_err=0;
    if (FUNC10(myARGV[2], "detach"))
    {
        blackbox.detach_rc=FUNC7(blackbox.pid);
        if (!blackbox.detach_rc)
            blackbox.detach_err=FUNC2();
    }
    else
        blackbox.detach_rc=TRUE;

    if (logfile)
    {
        FUNC9(logfile, &blackbox, sizeof(blackbox));
    }
    FUNC11("debugger: done debugging...\n");
    FUNC3(done_event);

    /* Just exit with a known value */
    FUNC1(0xdeadbeef);
}