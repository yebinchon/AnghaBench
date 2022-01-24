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
struct task {int dummy; } ;
struct background_worker {scalar_t__ uncompleted; int /*<<< orphan*/  lock; } ;
struct background_thread {int /*<<< orphan*/ * task; struct background_worker* owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct background_worker*,struct task*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct background_thread *thread, struct task *task)
{
    struct background_worker *worker = thread->owner;
    FUNC1(worker, task);

    FUNC2(&worker->lock);
    thread->task = NULL;
    worker->uncompleted--;
    FUNC0(worker->uncompleted >= 0);
    FUNC3(&worker->lock);
}