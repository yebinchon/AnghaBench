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
struct TYPE_6__ {scalar_t__ function; int /*<<< orphan*/  ready_event; int /*<<< orphan*/  result; int /*<<< orphan*/  go_event; } ;
struct TYPE_7__ {TYPE_1__ thread; } ;
typedef  TYPE_2__ SessionInfo ;
typedef  int /*<<< orphan*/  MMRESULT ;
typedef  scalar_t__ LPVOID ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DRVM_TERMINATE ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  MMSYSERR_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_PRIORITY_TIME_CRITICAL ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WAIT_IO_COMPLETION ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

DWORD
FUNC8(LPVOID parameter)
{
    MMRESULT result = MMSYSERR_ERROR;
    SessionInfo* session_info = (SessionInfo*) parameter;
    BOOL terminate = FALSE;

    /* All your CPU time are belong to us */
    FUNC6(FUNC1(), THREAD_PRIORITY_TIME_CRITICAL);

    FUNC0("Wave processing thread setting ready state\n");

    FUNC5(session_info->thread.ready_event);

    while ( ! terminate )
    {
        /* Wait for GO event, or IO completion notification */
        while ( FUNC7(session_info->thread.go_event,
                                      INFINITE,
                                      TRUE) == WAIT_IO_COMPLETION )
        {
            /* A buffer has been finished with - pass back to the client */
            FUNC4(session_info);
        }

        FUNC0("Wave processing thread woken up\n");

        /* Set the terminate flag if that's what the caller wants */
        terminate = (session_info->thread.function == DRVM_TERMINATE);

        /* Process the request */
        FUNC0("Processing thread request\n");
        result = FUNC3(session_info);

        /* Store the result code */
        session_info->thread.result = result;

        /* Submit new buffers and continue existing ones */
        FUNC0("Performing wave I/O\n");
        FUNC2(session_info);

        /* Now we're ready for more action */
        FUNC0("Wave processing thread sleeping\n");
        FUNC5(session_info->thread.ready_event);
    }

    return 0;
}