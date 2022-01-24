#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int is_available; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; } ;
typedef  TYPE_1__ vout_snapshot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(vout_snapshot_t *snap)
{
    if (snap == NULL)
        return;

    FUNC1(&snap->lock);

    snap->is_available = false;

    FUNC0(&snap->wait);
    FUNC2(&snap->lock);
}