#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ api_bus; int /*<<< orphan*/  subscribed; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_NOT_SUBSCRIBED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        int r;

        FUNC0(message);
        FUNC0(m);

        /* Anyone can call this method */

        r = FUNC1(message, "status", error);
        if (r < 0)
                return r;

        if (FUNC3(message) == m->api_bus) {
                r = FUNC5(m->subscribed, message);
                if (r < 0)
                        return r;
                if (r == 0)
                        return FUNC2(error, BUS_ERROR_NOT_SUBSCRIBED, "Client is not subscribed.");
        }

        return FUNC4(message, NULL);
}