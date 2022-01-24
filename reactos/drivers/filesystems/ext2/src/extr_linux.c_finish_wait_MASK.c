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
typedef  struct __wait_queue* wait_queue_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ wait_queue_head_t ;
struct __wait_queue {int /*<<< orphan*/  task_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct __wait_queue*) ; 

void FUNC6(wait_queue_head_t *q, wait_queue_t *waiti)
{
    unsigned long flags;
    struct __wait_queue *wait = *waiti;

    FUNC0(TASK_RUNNING);
    /*
     * We can check for list emptiness outside the lock
     * IFF:
     *  - we use the "careful" check that verifies both
     *    the next and prev pointers, so that there cannot
     *    be any half-pending updates in progress on other
     *    CPU's that we haven't seen yet (and that might
     *    still change the stack area.
     * and
     *  - all other users take the lock (ie we can only
     *    have _one_ other CPU that looks at or modifies
     *    the list).
     */
    if (!FUNC2(&wait->task_list)) {
        FUNC3(&q->lock, flags);
        FUNC1(&wait->task_list);
        FUNC4(&q->lock, flags);
    }

    /* free wait */
    FUNC5(wait);
}