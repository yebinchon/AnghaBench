#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cs; } ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef  TYPE_1__ BackgroundCopyJobImpl ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  scalar_t__ BG_JOB_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__ globalMgr ; 

BOOL FUNC2(BackgroundCopyJobImpl *job, BG_JOB_STATE from, BG_JOB_STATE to)
{
    BOOL ret = FALSE;

    FUNC0(&globalMgr.cs);
    if (job->state == from)
    {
        job->state = to;
        ret = TRUE;
    }
    FUNC1(&globalMgr.cs);
    return ret;
}