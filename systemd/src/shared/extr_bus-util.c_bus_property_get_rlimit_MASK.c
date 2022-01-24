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
typedef  int /*<<< orphan*/  uint64_t ;
struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;
typedef  scalar_t__ rlim_t ;

/* Variables and functions */
 scalar_t__ RLIM_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct rlimit*) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char const* FUNC6 (char const*,int) ; 
 char* FUNC7 (char const*,char*) ; 

int FUNC8(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        const char *is_soft;
        struct rlimit *rl;
        uint64_t u;
        rlim_t x;

        FUNC0(*bus);
        FUNC0(*reply);
        FUNC0(userdata);

        is_soft = FUNC2(property, "Soft");

        rl = *(struct rlimit**) userdata;
        if (rl)
                x = is_soft ? rl->rlim_cur : rl->rlim_max;
        else {
                struct rlimit buf = {};
                const char *s, *p;
                int z;

                /* Chop off "Soft" suffix */
                s = is_soft ? FUNC6(property, is_soft - property) : property;

                /* Skip over any prefix, such as "Default" */
                FUNC1(p = FUNC7(s, "Limit"));

                z = FUNC4(p + 5);
                FUNC0(z >= 0);

                (void) FUNC3(z, &buf);
                x = is_soft ? buf.rlim_cur : buf.rlim_max;
        }

        /* rlim_t might have different sizes, let's map RLIMIT_INFINITY to (uint64_t) -1, so that it is the same on all
         * archs */
        u = x == RLIM_INFINITY ? (uint64_t) -1 : (uint64_t) x;

        return FUNC5(reply, "t", u);
}