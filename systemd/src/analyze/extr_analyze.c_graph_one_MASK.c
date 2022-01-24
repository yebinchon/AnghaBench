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
typedef  int /*<<< orphan*/  const sd_bus ;
typedef  int /*<<< orphan*/  UnitInfo ;

/* Variables and functions */
 int /*<<< orphan*/  DEP_ALL ; 
 int /*<<< orphan*/  DEP_ORDER ; 
 int /*<<< orphan*/  DEP_REQUIRE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg_dot ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char*,char*,char**,char**,char**) ; 

__attribute__((used)) static int FUNC3(sd_bus *bus, const UnitInfo *u, char *patterns[], char *from_patterns[], char *to_patterns[]) {
        int r;

        FUNC1(bus);
        FUNC1(u);

        if (FUNC0(arg_dot, DEP_ORDER, DEP_ALL)) {
                r = FUNC2(bus, u, "After", "green", patterns, from_patterns, to_patterns);
                if (r < 0)
                        return r;
        }

        if (FUNC0(arg_dot, DEP_REQUIRE, DEP_ALL)) {
                r = FUNC2(bus, u, "Requires", "black", patterns, from_patterns, to_patterns);
                if (r < 0)
                        return r;
                r = FUNC2(bus, u, "Requisite", "darkblue", patterns, from_patterns, to_patterns);
                if (r < 0)
                        return r;
                r = FUNC2(bus, u, "Wants", "grey66", patterns, from_patterns, to_patterns);
                if (r < 0)
                        return r;
                r = FUNC2(bus, u, "Conflicts", "red", patterns, from_patterns, to_patterns);
                if (r < 0)
                        return r;
        }

        return 0;
}