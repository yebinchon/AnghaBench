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
struct worker {int /*<<< orphan*/  event; int /*<<< orphan*/  monitor; int /*<<< orphan*/  pid; TYPE_1__* manager; } ;
struct TYPE_2__ {int /*<<< orphan*/  workers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct worker*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct worker *worker) {
        if (!worker)
                return;

        FUNC1(worker->manager);

        FUNC4(worker->manager->workers, FUNC0(worker->pid));
        FUNC5(worker->monitor);
        FUNC2(worker->event);

        FUNC3(worker);
}