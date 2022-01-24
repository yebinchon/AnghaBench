#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  cpuset_mems; int /*<<< orphan*/  cpuset_cpus; void* ip_filters_egress; void* ip_filters_ingress; void* ip_address_deny; void* ip_address_allow; scalar_t__ device_allow; scalar_t__ blockio_device_bandwidths; scalar_t__ blockio_device_weights; scalar_t__ io_device_limits; scalar_t__ io_device_latencies; scalar_t__ io_device_weights; } ;
typedef  TYPE_1__ CGroupContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (void*) ; 
 void* FUNC9 (void*) ; 

void FUNC10(CGroupContext *c) {
        FUNC0(c);

        while (c->io_device_weights)
                FUNC6(c, c->io_device_weights);

        while (c->io_device_latencies)
                FUNC4(c, c->io_device_latencies);

        while (c->io_device_limits)
                FUNC5(c, c->io_device_limits);

        while (c->blockio_device_weights)
                FUNC2(c, c->blockio_device_weights);

        while (c->blockio_device_bandwidths)
                FUNC1(c, c->blockio_device_bandwidths);

        while (c->device_allow)
                FUNC3(c, c->device_allow);

        c->ip_address_allow = FUNC8(c->ip_address_allow);
        c->ip_address_deny = FUNC8(c->ip_address_deny);

        c->ip_filters_ingress = FUNC9(c->ip_filters_ingress);
        c->ip_filters_egress = FUNC9(c->ip_filters_egress);

        FUNC7(&c->cpuset_cpus);
        FUNC7(&c->cpuset_mems);
}