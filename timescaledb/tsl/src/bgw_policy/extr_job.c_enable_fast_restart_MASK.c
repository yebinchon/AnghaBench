#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
struct TYPE_11__ {TYPE_1__ fd; } ;
struct TYPE_9__ {int /*<<< orphan*/  last_start; } ;
struct TYPE_10__ {TYPE_2__ fd; } ;
typedef  TYPE_3__ BgwJobStat ;
typedef  TYPE_4__ BgwJob ;

/* Variables and functions */
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(BgwJob *job, const char *job_name)
{
	BgwJobStat *job_stat = FUNC1(job->fd.id);

	FUNC2(job, job_stat->fd.last_start);
	FUNC0(LOG, "the %s job is scheduled to run again immediately", job_name);
}