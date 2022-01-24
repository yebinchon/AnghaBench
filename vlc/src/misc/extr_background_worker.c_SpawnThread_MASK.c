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
struct background_worker {int /*<<< orphan*/  threads; int /*<<< orphan*/  nthreads; int /*<<< orphan*/  lock; } ;
struct background_thread {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  Thread ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 struct background_thread* FUNC0 (struct background_worker*) ; 
 int /*<<< orphan*/  FUNC1 (struct background_thread*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct background_thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct background_worker *worker)
{
    FUNC4(&worker->lock);

    struct background_thread *thread = FUNC0(worker);
    if (!thread)
        return false;

    if (FUNC2(NULL, Thread, thread, VLC_THREAD_PRIORITY_LOW))
    {
        FUNC1(thread);
        return false;
    }
    worker->nthreads++;
    FUNC3(&thread->node, &worker->threads);

    return true;
}