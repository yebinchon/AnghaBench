#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; scalar_t__ start_time; int pid; int /*<<< orphan*/ * argv; int /*<<< orphan*/  retry_num; } ;
typedef  TYPE_1__ sentinelScriptJob ;
typedef  int pid_t ;
typedef  scalar_t__ mstime_t ;
struct TYPE_6__ {TYPE_1__* value; } ;
typedef  TYPE_2__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_7__ {scalar_t__ running_scripts; int /*<<< orphan*/  scripts_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  LL_WARNING ; 
 scalar_t__ SENTINEL_SCRIPT_MAX_RUNNING ; 
 int SENTINEL_SCRIPT_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  environ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 TYPE_3__ sentinel ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,long,...) ; 

void FUNC7(void) {
    listNode *ln;
    listIter li;
    mstime_t now = FUNC5();

    /* Find jobs that are not running and run them, from the top to the
     * tail of the queue, so we run older jobs first. */
    FUNC4(sentinel.scripts_queue,&li);
    while (sentinel.running_scripts < SENTINEL_SCRIPT_MAX_RUNNING &&
           (ln = FUNC3(&li)) != NULL)
    {
        sentinelScriptJob *sj = ln->value;
        pid_t pid;

        /* Skip if already running. */
        if (sj->flags & SENTINEL_SCRIPT_RUNNING) continue;

        /* Skip if it's a retry, but not enough time has elapsed. */
        if (sj->start_time && sj->start_time > now) continue;

        sj->flags |= SENTINEL_SCRIPT_RUNNING;
        sj->start_time = FUNC5();
        sj->retry_num++;
        pid = FUNC2();

        if (pid == -1) {
            /* Parent (fork error).
             * We report fork errors as signal 99, in order to unify the
             * reporting with other kind of errors. */
            FUNC6(LL_WARNING,"-script-error",NULL,
                          "%s %d %d", sj->argv[0], 99, 0);
            sj->flags &= ~SENTINEL_SCRIPT_RUNNING;
            sj->pid = 0;
        } else if (pid == 0) {
            /* Child */
            FUNC1(sj->argv[0],sj->argv,environ);
            /* If we are here an error occurred. */
            FUNC0(2); /* Don't retry execution. */
        } else {
            sentinel.running_scripts++;
            sj->pid = pid;
            FUNC6(LL_DEBUG,"+script-child",NULL,"%ld",(long)pid);
        }
    }
}