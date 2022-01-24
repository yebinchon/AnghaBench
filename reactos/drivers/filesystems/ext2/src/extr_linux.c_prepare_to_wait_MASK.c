#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  struct __wait_queue* wait_queue_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ wait_queue_head_t ;
struct __wait_queue {int /*<<< orphan*/  task_list; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  WQ_FLAG_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct __wait_queue*) ; 
 scalar_t__ FUNC1 (struct __wait_queue*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC6(wait_queue_head_t *q, wait_queue_t *waiti, int state)
{
    unsigned long flags;
    struct __wait_queue *wait = *waiti;

    wait->flags &= ~WQ_FLAG_EXCLUSIVE;
    FUNC4(&q->lock, flags);
    if (FUNC2(&wait->task_list))
        FUNC0(q, wait);
    /*
     * don't alter the task state if this is just going to
     * queue an async wait queue callback
     */
    if (FUNC1(wait))
        FUNC3(state);
    FUNC5(&q->lock, flags);
}