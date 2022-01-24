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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/  return_value; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SD_BUS_ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_1__*,char,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        uint8_t code;
        int r;

        FUNC1(message);
        FUNC1(m);

        r = FUNC3(message, "exit", error);
        if (r < 0)
                return r;

        r = FUNC5(message, 'y', &code);
        if (r < 0)
                return r;

        if (FUNC0(m) && FUNC2() <= 0)
                return FUNC4(error, SD_BUS_ERROR_NOT_SUPPORTED, "ExitCode can only be set for user service managers or in containers.");

        m->return_value = code;

        return FUNC6(message, NULL);
}