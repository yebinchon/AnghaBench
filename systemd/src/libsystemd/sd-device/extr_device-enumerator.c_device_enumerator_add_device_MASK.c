#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ n_devices; int /*<<< orphan*/ * devices; int /*<<< orphan*/  n_allocated; } ;
typedef  TYPE_1__ sd_device_enumerator ;
typedef  TYPE_1__ sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(sd_device_enumerator *enumerator, sd_device *device) {
        FUNC1(enumerator, -EINVAL);
        FUNC1(device, -EINVAL);

        if (!FUNC0(enumerator->devices, enumerator->n_allocated, enumerator->n_devices + 1))
                return -ENOMEM;

        enumerator->devices[enumerator->n_devices++] = FUNC2(device);

        return 0;
}