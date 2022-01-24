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
struct task {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_threads; } ;
struct background_worker {scalar_t__ uncompleted; scalar_t__ nthreads; int /*<<< orphan*/  lock; TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct background_worker*,struct task*) ; 
 int /*<<< orphan*/  FUNC1 (struct background_worker*) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 struct task* FUNC2 (struct background_worker*,void*,void*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6( struct background_worker* worker, void* entity,
                        void* id, int timeout )
{
    struct task *task = FUNC2(worker, id, entity, timeout);
    if (FUNC3(!task))
        return VLC_ENOMEM;

    FUNC4(&worker->lock);
    FUNC0(worker, task);
    if (++worker->uncompleted > worker->nthreads
            && worker->nthreads < worker->conf.max_threads)
        FUNC1(worker);
    FUNC5(&worker->lock);

    return VLC_SUCCESS;
}