#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * dev; } ;
typedef  TYPE_1__ d3d9_device_t ;
struct TYPE_6__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__ device ; 
 int /*<<< orphan*/  inst_lock ; 
 scalar_t__ instances ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(d3d9_device_t *d3d_dev)
{
    FUNC2(&inst_lock);
    if (d3d_dev->dev && d3d_dev->dev == device.dev)
    {
        FUNC1(instances != 0);
        if (--instances == 0)
            device.dev = NULL;
    }
    FUNC0(d3d_dev);
    FUNC3(&inst_lock);
}