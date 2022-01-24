#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* path; int /*<<< orphan*/  io_device_weights; } ;
typedef  TYPE_1__ CGroupIODeviceWeight ;
typedef  TYPE_1__ CGroupContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  device_weights ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(CGroupContext *c, CGroupIODeviceWeight *w) {
        FUNC1(c);
        FUNC1(w);

        FUNC0(device_weights, c->io_device_weights, w);
        FUNC2(w->path);
        FUNC2(w);
}