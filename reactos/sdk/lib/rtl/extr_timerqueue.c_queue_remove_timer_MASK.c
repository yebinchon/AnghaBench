#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timer_queue {scalar_t__ event; int /*<<< orphan*/  timers; scalar_t__ quit; } ;
struct queue_timer {scalar_t__ runcount; int destroy; scalar_t__ event; int /*<<< orphan*/  entry; struct timer_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct queue_timer*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct queue_timer *t)
{
    /* We MUST hold the queue cs while calling this function.  This ensures
       that we cannot queue another callback for this timer.  The runcount
       being zero makes sure we don't have any already queued.  */
    struct timer_queue *q = t->q;

    FUNC3(t->runcount == 0);
    FUNC3(t->destroy);

    FUNC5(&t->entry);
    if (t->event)
        FUNC0(t->event, NULL);
    FUNC1(FUNC2(), 0, t);

    if (q->quit && FUNC4(&q->timers))
        FUNC0(q->event, NULL);
}