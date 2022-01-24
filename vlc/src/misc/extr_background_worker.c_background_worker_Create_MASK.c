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
struct background_worker_config {int dummy; } ;
struct background_worker {int closing; int /*<<< orphan*/  nothreads_wait; int /*<<< orphan*/  queue_wait; int /*<<< orphan*/  queue; int /*<<< orphan*/  threads; scalar_t__ nthreads; scalar_t__ uncompleted; int /*<<< orphan*/  lock; void* owner; struct background_worker_config conf; } ;

/* Variables and functions */
 struct background_worker* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct background_worker *FUNC5(void *owner,
                                         struct background_worker_config *conf)
{
    struct background_worker* worker = FUNC0(sizeof(*worker));
    if (FUNC1(!worker))
        return NULL;

    worker->conf = *conf;
    worker->owner = owner;

    FUNC4(&worker->lock);
    worker->uncompleted = 0;
    worker->nthreads = 0;
    FUNC3(&worker->threads);
    FUNC3(&worker->queue);
    FUNC2(&worker->queue_wait);
    FUNC2(&worker->nothreads_wait);
    worker->closing = false;
    return worker;
}