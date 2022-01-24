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
typedef  void sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (void*,int,void*) ; 

__attribute__((used)) static int FUNC2(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        FUNC0(m);
        FUNC0(userdata);

        return FUNC1(m, false, userdata);
}