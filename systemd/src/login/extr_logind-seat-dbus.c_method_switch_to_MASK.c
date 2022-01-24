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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC4(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Seat *s = userdata;
        unsigned to;
        int r;

        FUNC0(message);
        FUNC0(s);

        r = FUNC1(message, "u", &to);
        if (r < 0)
                return r;

        if (to <= 0)
                return -EINVAL;

        r = FUNC3(s, to);
        if (r < 0)
                return r;

        return FUNC2(message, NULL);
}