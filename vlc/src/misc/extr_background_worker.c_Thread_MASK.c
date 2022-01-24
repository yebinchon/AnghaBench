#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct task {scalar_t__ timeout; int /*<<< orphan*/  entity; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* pf_stop ) (int /*<<< orphan*/ ,void*) ;scalar_t__ (* pf_probe ) (int /*<<< orphan*/ ,void*) ;scalar_t__ (* pf_start ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ;} ;
struct background_worker {int /*<<< orphan*/  owner; TYPE_1__ conf; int /*<<< orphan*/  lock; } ;
struct background_thread {int cancel; int probe; int /*<<< orphan*/  probe_cancel_wait; struct task* task; struct background_worker* owner; } ;

/* Variables and functions */
 scalar_t__ INT64_MAX ; 
 struct task* FUNC0 (struct background_worker*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct background_thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct background_thread*,struct task*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static void* FUNC10( void* data )
{
    struct background_thread *thread = data;
    struct background_worker *worker = thread->owner;

    for (;;)
    {
        FUNC7(&worker->lock);
        struct task *task = FUNC0(worker, 5000);
        if (!task)
        {
            FUNC8(&worker->lock);
            /* terminate this thread */
            break;
        }

        thread->task = task;
        thread->cancel = false;
        thread->probe = false;
        vlc_tick_t deadline;
        if (task->timeout > 0)
            deadline = FUNC9() + task->timeout;
        else
            deadline = INT64_MAX; /* no deadline */
        FUNC8(&worker->lock);

        void *handle;
        if (worker->conf.pf_start(worker->owner, task->entity, &handle))
        {
            FUNC2(thread, task);
            continue;
        }

        for (;;)
        {
            FUNC7(&worker->lock);
            bool timeout = false;
            while (!timeout && !thread->probe && !thread->cancel)
                /* any non-zero return value means timeout */
                timeout = FUNC6(&thread->probe_cancel_wait,
                                             &worker->lock, deadline) != 0;

            bool cancel = thread->cancel;
            thread->cancel = false;
            thread->probe = false;
            FUNC8(&worker->lock);

            if (timeout || cancel
                    || worker->conf.pf_probe(worker->owner, handle))
            {
                worker->conf.pf_stop(worker->owner, handle);
                FUNC2(thread, task);
                break;
            }
        }
    }

    FUNC1(thread);

    return NULL;
}