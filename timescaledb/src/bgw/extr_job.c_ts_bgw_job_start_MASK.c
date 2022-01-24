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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_9__ {int /*<<< orphan*/  application_name; int /*<<< orphan*/  id; } ;
struct TYPE_11__ {TYPE_1__ fd; } ;
struct TYPE_10__ {struct TYPE_10__* data; } ;
typedef  TYPE_2__* StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ BgwJob ;
typedef  int /*<<< orphan*/  BackgroundWorkerHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  job_entrypoint_function_name ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

BackgroundWorkerHandle *
FUNC6(BgwJob *job, Oid user_uid)
{
	int32 job_id = FUNC0(job->fd.id);
	StringInfo si = FUNC3();
	BackgroundWorkerHandle *bgw_handle;

	/* Changing this requires changes to ts_bgw_job_entrypoint */
	FUNC2(si, "%u %d", user_uid, job_id);

	bgw_handle = FUNC5(job_entrypoint_function_name,
									 FUNC1(job->fd.application_name),
									 si->data);

	FUNC4(si->data);
	FUNC4(si);
	return bgw_handle;
}