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
struct background_worker {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct background_worker*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct background_worker *worker)
{
    FUNC1(&worker->queue_wait);
    FUNC2(&worker->lock);
    FUNC0(worker);
}