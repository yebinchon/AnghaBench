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
struct TYPE_3__ {scalar_t__ io_weight; scalar_t__ startup_io_weight; scalar_t__ io_device_limits; scalar_t__ io_device_latencies; scalar_t__ io_device_weights; scalar_t__ io_accounting; } ;
typedef  TYPE_1__ CGroupContext ;

/* Variables and functions */
 scalar_t__ CGROUP_WEIGHT_INVALID ; 

__attribute__((used)) static bool FUNC0(CGroupContext *c) {
        return c->io_accounting ||
                c->io_weight != CGROUP_WEIGHT_INVALID ||
                c->startup_io_weight != CGROUP_WEIGHT_INVALID ||
                c->io_device_weights ||
                c->io_device_latencies ||
                c->io_device_limits;
}