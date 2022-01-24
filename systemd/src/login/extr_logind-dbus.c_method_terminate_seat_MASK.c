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
typedef  int /*<<< orphan*/  Seat ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const**) ; 

__attribute__((used)) static int FUNC4(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        const char *name;
        Seat *seat;
        int r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC3(message, "s", &name);
        if (r < 0)
                return r;

        r = FUNC2(m, message, name, error, &seat);
        if (r < 0)
                return r;

        return FUNC1(message, seat, error);
}