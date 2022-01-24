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
typedef  int /*<<< orphan*/  pool_scrub_cmd_t ;
struct TYPE_3__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_SPACE_CHECK_RESERVED ; 
 int /*<<< orphan*/  dsl_scrub_pause_resume_check ; 
 int /*<<< orphan*/  dsl_scrub_pause_resume_sync ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(const dsl_pool_t *dp, pool_scrub_cmd_t cmd)
{
	return (FUNC0(FUNC1(dp->dp_spa),
	    dsl_scrub_pause_resume_check, dsl_scrub_pause_resume_sync, &cmd, 3,
	    ZFS_SPACE_CHECK_RESERVED));
}