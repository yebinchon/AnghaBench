#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_2__ {int /*<<< orphan*/  message; } ;

/* Variables and functions */
#define  BUS_NAME_ALREADY_OWNER 131 
#define  BUS_NAME_EXISTS 130 
#define  BUS_NAME_IN_QUEUE 129 
#define  BUS_NAME_PRIMARY_OWNER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int*) ; 

__attribute__((used)) static int FUNC9(
                sd_bus_message *m,
                void *userdata,
                sd_bus_error *ret_error) {

        uint32_t ret;
        int r;

        FUNC0(m);

        if (FUNC7(m, NULL)) {
                FUNC3(FUNC5(m),
                                "Unable to request name, failing connection: %s",
                                FUNC6(m)->message);

                FUNC1(FUNC4(m));
                return 1;
        }

        r = FUNC8(m, "u", &ret);
        if (r < 0)
                return r;

        switch (ret) {

        case BUS_NAME_ALREADY_OWNER:
                FUNC2("Already owner of requested service name, ignoring.");
                return 1;

        case BUS_NAME_IN_QUEUE:
                FUNC2("In queue for requested service name.");
                return 1;

        case BUS_NAME_PRIMARY_OWNER:
                FUNC2("Successfully acquired requested service name.");
                return 1;

        case BUS_NAME_EXISTS:
                FUNC2("Requested service name already owned, failing connection.");
                FUNC1(FUNC4(m));
                return 1;
        }

        FUNC2("Unexpected response from RequestName(), failing connection.");
        FUNC1(FUNC4(m));
        return 1;
}