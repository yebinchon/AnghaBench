#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ retry_num; long* argv; scalar_t__ start_time; scalar_t__ pid; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ sentinelScriptJob ;
typedef  scalar_t__ pid_t ;
struct TYPE_8__ {TYPE_1__* value; } ;
typedef  TYPE_2__ listNode ;
struct TYPE_9__ {int /*<<< orphan*/  running_scripts; int /*<<< orphan*/  scripts_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  LL_WARNING ; 
 scalar_t__ SENTINEL_SCRIPT_MAX_RETRY ; 
 int /*<<< orphan*/  SENTINEL_SCRIPT_RUNNING ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 () ; 
 TYPE_5__ sentinel ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,long,int,int) ; 
 TYPE_2__* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,long) ; 
 scalar_t__ FUNC10 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC11(void) {
    int statloc;
    pid_t pid;

    while ((pid = FUNC10(&statloc,WNOHANG,NULL)) > 0) {
        int exitcode = FUNC0(statloc);
        int bysignal = 0;
        listNode *ln;
        sentinelScriptJob *sj;

        if (FUNC1(statloc)) bysignal = FUNC2(statloc);
        FUNC5(LL_DEBUG,"-script-child",NULL,"%ld %d %d",
            (long)pid, exitcode, bysignal);

        ln = FUNC6(pid);
        if (ln == NULL) {
            FUNC9(LL_WARNING,"wait3() returned a pid (%ld) we can't find in our scripts execution queue!", (long)pid);
            continue;
        }
        sj = ln->value;

        /* If the script was terminated by a signal or returns an
         * exit code of "1" (that means: please retry), we reschedule it
         * if the max number of retries is not already reached. */
        if ((bysignal || exitcode == 1) &&
            sj->retry_num != SENTINEL_SCRIPT_MAX_RETRY)
        {
            sj->flags &= ~SENTINEL_SCRIPT_RUNNING;
            sj->pid = 0;
            sj->start_time = FUNC4() +
                             FUNC8(sj->retry_num);
        } else {
            /* Otherwise let's remove the script, but log the event if the
             * execution did not terminated in the best of the ways. */
            if (bysignal || exitcode != 0) {
                FUNC5(LL_WARNING,"-script-error",NULL,
                              "%s %d %d", sj->argv[0], bysignal, exitcode);
            }
            FUNC3(sentinel.scripts_queue,ln);
            FUNC7(sj);
            sentinel.running_scripts--;
        }
    }
}