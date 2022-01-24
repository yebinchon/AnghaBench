#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_5__ {int /*<<< orphan*/  create_message; } ;
typedef  int /*<<< orphan*/  Manager ;
typedef  TYPE_1__ Machine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(sd_bus_message *message, bool read_network, void *userdata, sd_bus_error *error) {
        Manager *manager = userdata;
        Machine *m = NULL;
        int r;

        FUNC0(message);
        FUNC0(manager);

        r = FUNC3(manager, message, read_network, &m, error);
        if (r < 0)
                return r;

        r = FUNC4(message, 'a', "(sv)");
        if (r < 0)
                goto fail;

        r = FUNC2(m, message, error);
        if (r < 0)
                goto fail;

        m->create_message = FUNC5(message);
        return 1;

fail:
        FUNC1(m);
        return r;
}