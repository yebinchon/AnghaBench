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
struct timer_queue {int /*<<< orphan*/  cs; } ;
struct queue_timer {scalar_t__ runcount; scalar_t__ destroy; struct timer_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct queue_timer*) ; 

__attribute__((used)) static void FUNC4(struct queue_timer *t)
{
    struct timer_queue *q = t->q;
    FUNC0(&q->cs);

    FUNC2(0 < t->runcount);
    --t->runcount;

    if (t->destroy && t->runcount == 0)
        FUNC3(t);

    FUNC1(&q->cs);
}