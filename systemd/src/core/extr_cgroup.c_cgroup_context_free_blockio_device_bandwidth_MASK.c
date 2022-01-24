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
struct TYPE_8__ {struct TYPE_8__* path; int /*<<< orphan*/  blockio_device_bandwidths; } ;
typedef  TYPE_1__ CGroupContext ;
typedef  TYPE_1__ CGroupBlockIODeviceBandwidth ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  device_bandwidths ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(CGroupContext *c, CGroupBlockIODeviceBandwidth *b) {
        FUNC1(c);
        FUNC1(b);

        FUNC0(device_bandwidths, c->blockio_device_bandwidths, b);
        FUNC2(b->path);
        FUNC2(b);
}