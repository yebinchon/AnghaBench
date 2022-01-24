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
struct background_worker {scalar_t__ nthreads; int /*<<< orphan*/  lock; int /*<<< orphan*/  nothreads_wait; } ;
struct background_thread {int /*<<< orphan*/  node; struct background_worker* owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct background_thread*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct background_thread *thread)
{
    struct background_worker *worker = thread->owner;

    FUNC4(&worker->lock);

    FUNC3(&thread->node);
    worker->nthreads--;
    FUNC0(worker->nthreads >= 0);
    if (!worker->nthreads)
        FUNC2(&worker->nothreads_wait);

    FUNC5(&worker->lock);

    FUNC1(thread);
}