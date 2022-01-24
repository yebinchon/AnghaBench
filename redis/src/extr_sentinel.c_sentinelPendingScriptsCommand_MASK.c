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
struct TYPE_5__ {char** argv; int flags; scalar_t__ pid; scalar_t__ start_time; scalar_t__ retry_num; } ;
typedef  TYPE_1__ sentinelScriptJob ;
typedef  scalar_t__ mstime_t ;
struct TYPE_6__ {TYPE_1__* value; } ;
typedef  TYPE_2__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_7__ {int /*<<< orphan*/  scripts_queue; } ;

/* Variables and functions */
 int SENTINEL_SCRIPT_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 TYPE_3__ sentinel ; 

void FUNC8(client *c) {
    listNode *ln;
    listIter li;

    FUNC0(c,FUNC4(sentinel.scripts_queue));
    FUNC6(sentinel.scripts_queue,&li);
    while ((ln = FUNC5(&li)) != NULL) {
        sentinelScriptJob *sj = ln->value;
        int j = 0;

        FUNC3(c,5);

        FUNC1(c,"argv");
        while (sj->argv[j]) j++;
        FUNC0(c,j);
        j = 0;
        while (sj->argv[j]) FUNC1(c,sj->argv[j++]);

        FUNC1(c,"flags");
        FUNC1(c,
            (sj->flags & SENTINEL_SCRIPT_RUNNING) ? "running" : "scheduled");

        FUNC1(c,"pid");
        FUNC2(c,sj->pid);

        if (sj->flags & SENTINEL_SCRIPT_RUNNING) {
            FUNC1(c,"run-time");
            FUNC2(c,FUNC7() - sj->start_time);
        } else {
            mstime_t delay = sj->start_time ? (sj->start_time-FUNC7()) : 0;
            if (delay < 0) delay = 0;
            FUNC1(c,"run-delay");
            FUNC2(c,delay);
        }

        FUNC1(c,"retry-num");
        FUNC2(c,sj->retry_num);
    }
}