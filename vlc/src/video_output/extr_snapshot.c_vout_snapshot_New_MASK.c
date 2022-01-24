#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int is_available; int /*<<< orphan*/ * picture; scalar_t__ request_count; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vout_snapshot_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

vout_snapshot_t *FUNC4(void)
{
    vout_snapshot_t *snap = FUNC0(sizeof (*snap));
    if (FUNC1(snap == NULL))
        return NULL;

    FUNC3(&snap->lock);
    FUNC2(&snap->wait);

    snap->is_available = true;
    snap->request_count = 0;
    snap->picture = NULL;
    return snap;
}