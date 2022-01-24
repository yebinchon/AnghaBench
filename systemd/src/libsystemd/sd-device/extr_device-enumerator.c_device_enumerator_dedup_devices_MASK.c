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
struct TYPE_4__ {int n_devices; int /*<<< orphan*/ ** devices; } ;
typedef  TYPE_1__ sd_device_enumerator ;
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(sd_device_enumerator *enumerator) {
        sd_device **a, **b, **end;

        FUNC0(enumerator);

        if (enumerator->n_devices <= 1)
                return;

        a = enumerator->devices + 1;
        b = enumerator->devices;
        end = enumerator->devices + enumerator->n_devices;

        for (; a < end; a++) {
                const char *devpath_a, *devpath_b;

                FUNC1(FUNC3(*a, &devpath_a) >= 0);
                FUNC1(FUNC3(*b, &devpath_b) >= 0);

                if (FUNC2(devpath_a, devpath_b))
                        FUNC4(*a);
                else
                        *(++b) = *a;
        }

        enumerator->n_devices = b - enumerator->devices + 1;
}