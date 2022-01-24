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
struct TYPE_3__ {int bgw_flags; int /*<<< orphan*/  bgw_extra; int /*<<< orphan*/  bgw_function_name; int /*<<< orphan*/  bgw_library_name; int /*<<< orphan*/  bgw_name; int /*<<< orphan*/  bgw_main_arg; int /*<<< orphan*/  bgw_notify_pid; int /*<<< orphan*/  bgw_restart_time; int /*<<< orphan*/  bgw_start_time; } ;
typedef  int /*<<< orphan*/  BackgroundWorkerHandle ;
typedef  TYPE_1__ BackgroundWorker ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BGWORKER_BACKEND_DATABASE_CONNECTION ; 
 int BGWORKER_SHMEM_ACCESS ; 
 scalar_t__ BGW_EXTRALEN ; 
 scalar_t__ BGW_MAXLEN ; 
 int /*<<< orphan*/  BGW_NEVER_RESTART ; 
 int /*<<< orphan*/  BgWorkerStart_RecoveryFinished ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  MyProcPid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 scalar_t__ FUNC4 (char const*) ; 
 char const* FUNC5 () ; 

BackgroundWorkerHandle *
FUNC6(const char *function, const char *name, const char *extra)
{
	BackgroundWorker worker = {
		.bgw_flags = BGWORKER_SHMEM_ACCESS | BGWORKER_BACKEND_DATABASE_CONNECTION,
		.bgw_start_time = BgWorkerStart_RecoveryFinished,
		.bgw_restart_time = BGW_NEVER_RESTART,
		.bgw_notify_pid = MyProcPid,
		.bgw_main_arg = FUNC1(MyDatabaseId),
	};
	BackgroundWorkerHandle *handle = NULL;

	FUNC3(worker.bgw_name, name, BGW_MAXLEN);
	FUNC3(worker.bgw_library_name, FUNC5(), BGW_MAXLEN);
	FUNC3(worker.bgw_function_name, function, BGW_MAXLEN);

	FUNC0(FUNC4(extra) < BGW_EXTRALEN);
	FUNC3(worker.bgw_extra, extra, BGW_EXTRALEN);

	if (!FUNC2(&worker, &handle))
		return NULL;
	return handle;
}