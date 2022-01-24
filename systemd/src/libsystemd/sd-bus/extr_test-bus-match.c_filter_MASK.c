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
 size_t FUNC0 (int*) ; 
 size_t FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int* mask ; 

__attribute__((used)) static int FUNC4(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        FUNC3("Ran %u", FUNC1(userdata));
        FUNC2(FUNC1(userdata) < FUNC0(mask));
        mask[FUNC1(userdata)] = true;
        return 0;
}