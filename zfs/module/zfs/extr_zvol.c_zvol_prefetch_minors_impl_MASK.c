#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_2__ {char* name; scalar_t__ error; } ;
typedef  TYPE_1__ minors_job_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ZVOL ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SYNC_READ ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	minors_job_t *job = arg;
	char *dsname = job->name;
	objset_t *os = NULL;

	job->error = FUNC1(dsname, DMU_OST_ZVOL, B_TRUE, B_TRUE,
	    FTAG, &os);
	if (job->error == 0) {
		FUNC2(os, ZVOL_OBJ, 0, 0, 0, ZIO_PRIORITY_SYNC_READ);
		FUNC0(os, B_TRUE, FTAG);
	}
}