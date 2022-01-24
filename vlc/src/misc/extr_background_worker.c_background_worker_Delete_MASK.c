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
struct background_worker {int closing; int /*<<< orphan*/  lock; int /*<<< orphan*/  nothreads_wait; scalar_t__ nthreads; int /*<<< orphan*/  queue_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct background_worker*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct background_worker*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6( struct background_worker* worker )
{
    FUNC4(&worker->lock);

    worker->closing = true;
    FUNC0(worker, NULL);
    /* closing is now true, this will wake up any QueueTake() */
    FUNC2(&worker->queue_wait);

    while (worker->nthreads)
        FUNC3(&worker->nothreads_wait, &worker->lock);

    FUNC5(&worker->lock);

    /* no threads use the worker anymore, we can destroy it */
    FUNC1(worker);
}