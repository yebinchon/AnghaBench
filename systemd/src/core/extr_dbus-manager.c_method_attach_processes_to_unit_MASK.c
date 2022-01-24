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
 int /*<<< orphan*/  GENERIC_UNIT_VALIDATE_LOADED ; 
 int /*<<< orphan*/  bus_unit_method_attach_processes ; 
 int FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        /* Don't allow attaching new processes to units that aren't loaded. Don't bother with loading a unit
         * for this purpose though, as an unloaded unit is a stopped unit, and we don't allow attaching
         * processes to stopped units anyway. */
        return FUNC0(message, userdata, error, bus_unit_method_attach_processes, GENERIC_UNIT_VALIDATE_LOADED);
}