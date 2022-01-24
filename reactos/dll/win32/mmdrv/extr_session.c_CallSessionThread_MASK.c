#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ThreadFunction ;
struct TYPE_5__ {int /*<<< orphan*/  result; int /*<<< orphan*/  ready_event; int /*<<< orphan*/  go_event; int /*<<< orphan*/  parameter; int /*<<< orphan*/  function; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;
typedef  TYPE_2__ SessionInfo ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  MMRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

MMRESULT
FUNC4(
    SessionInfo* session_info,
    ThreadFunction function,
    PVOID thread_parameter)
{
    FUNC0(session_info);

    session_info->thread.function = function;
    session_info->thread.parameter = thread_parameter;

    FUNC1("Calling session thread\n");
    FUNC2(session_info->thread.go_event);

    FUNC1("Waiting for thread response\n");
    FUNC3(session_info->thread.ready_event, INFINITE);

    return session_info->thread.result;
}