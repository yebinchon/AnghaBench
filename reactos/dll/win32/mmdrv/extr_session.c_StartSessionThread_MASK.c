#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* ready_event; void* go_event; int /*<<< orphan*/  handle; } ;
struct TYPE_8__ {scalar_t__ device_type; TYPE_1__ thread; } ;
typedef  TYPE_2__ SessionInfo ;
typedef  scalar_t__ MMRESULT ;
typedef  TYPE_2__* LPTASKCALLBACK ;
typedef  int /*<<< orphan*/  DWORD_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 scalar_t__ MMSYSERR_NOMEM ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ WaveOutDevice ; 
 scalar_t__ WaveThread ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

MMRESULT
FUNC6(SessionInfo* session_info)
{
    LPTASKCALLBACK task;
    MMRESULT result;

    FUNC0(session_info);

    /* This is our "ready" event, sent when the thread is idle */

    session_info->thread.ready_event = FUNC2(NULL, FALSE, FALSE, NULL);

    if ( ! session_info->thread.ready_event )
    {
        FUNC3("Couldn't create thread_ready event\n");
        return MMSYSERR_NOMEM;
    }

    /* This is our "go" event, sent when we want the thread to do something */

    session_info->thread.go_event = FUNC2(NULL, FALSE, FALSE, NULL);

    if ( ! session_info->thread.go_event )
    {
        FUNC3("Couldn't create thread_go event\n");
        FUNC1(session_info->thread.ready_event);
        return MMSYSERR_NOMEM;
    }

    /* TODO - other kinds of devices need attention, too */
    task = ( session_info->device_type == WaveOutDevice )
           ? (LPTASKCALLBACK) WaveThread : NULL;

    FUNC0(task);

    /* Effectively, this is a beefed-up CreateThread */

    result = FUNC5(task,
                          &session_info->thread.handle,
                          (DWORD_PTR)session_info);

    if ( result != MMSYSERR_NOERROR )
    {
        FUNC3("Task creation failed\n");
        FUNC1(session_info->thread.ready_event);
        FUNC1(session_info->thread.go_event);
        return result;
    }

    /* Wait for the thread to be ready before completing */

    FUNC4(session_info->thread.ready_event, INFINITE);

    return MMSYSERR_NOERROR;
}