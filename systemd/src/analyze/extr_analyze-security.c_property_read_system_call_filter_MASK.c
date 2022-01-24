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
struct security_info {int system_call_filter_whitelist; int /*<<< orphan*/  system_call_filter; } ;
typedef  char const sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  char const sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char,char*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  string_hash_ops ; 

__attribute__((used)) static int FUNC6(
                sd_bus *bus,
                const char *member,
                sd_bus_message *m,
                sd_bus_error *error,
                void *userdata) {

        struct security_info *info = userdata;
        int whitelist, r;

        FUNC0(bus);
        FUNC0(member);
        FUNC0(m);

        r = FUNC1(m, 'r', "bas");
        if (r < 0)
                return r;

        r = FUNC3(m, "b", &whitelist);
        if (r < 0)
                return r;

        info->system_call_filter_whitelist = whitelist;

        r = FUNC1(m, 'a', "s");
        if (r < 0)
                return r;

        for (;;) {
                const char *name;

                r = FUNC3(m, "s", &name);
                if (r < 0)
                        return r;
                if (r == 0)
                        break;

                r = FUNC4(&info->system_call_filter, &string_hash_ops);
                if (r < 0)
                        return r;

                r = FUNC5(info->system_call_filter, name);
                if (r < 0)
                        return r;
        }

        r = FUNC2(m);
        if (r < 0)
                return r;

        return FUNC2(m);
}