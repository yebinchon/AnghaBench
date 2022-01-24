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
typedef  int /*<<< orphan*/  Unit ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const**) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
                Manager *m,
                sd_bus_message *message,
                sd_bus_error *error) {

        int r;

        FUNC0(m);
        FUNC0(message);

        r = FUNC1(message, 'a', "(sa(sv))");
        if (r < 0)
                return r;

        while ((r = FUNC1(message, 'r', "sa(sv)")) > 0) {
                const char *name = NULL;
                Unit *u;

                r = FUNC3(message, "s", &name);
                if (r < 0)
                        return r;

                r = FUNC4(m, message, name, &u, error);
                if (r < 0)
                        return r;

                r = FUNC2(message);
                if (r < 0)
                        return r;
        }
        if (r < 0)
                return r;

        r = FUNC2(message);
        if (r < 0)
                return r;

        return 0;
}