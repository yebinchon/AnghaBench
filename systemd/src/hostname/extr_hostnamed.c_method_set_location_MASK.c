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
 int /*<<< orphan*/  PROP_LOCATION ; 
 int FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int (*) (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        return FUNC0(userdata, m, PROP_LOCATION, method_set_location, error);
}