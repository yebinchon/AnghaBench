#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;

/* Variables and functions */
 int /*<<< orphan*/  bus_unit_method_reset_failed ; 
 int FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        /* Don't load the unit (because unloaded units can't be in failed state), and don't insist on the
         * unit to be loaded properly (since a failed unit might have its unit file disappeared) */
        return FUNC0(message, userdata, error, bus_unit_method_reset_failed, 0);
}