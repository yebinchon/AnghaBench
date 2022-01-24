#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char const Unit ;
struct TYPE_3__ {scalar_t__ result; scalar_t__ deserialized_state; } ;
typedef  scalar_t__ PathState ;
typedef  scalar_t__ PathResult ;
typedef  TYPE_1__ Path ;
typedef  char const FDSet ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*) ; 
 scalar_t__ PATH_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(Unit *u, const char *key, const char *value, FDSet *fds) {
        Path *p = FUNC0(u);

        FUNC1(u);
        FUNC1(key);
        FUNC1(value);
        FUNC1(fds);

        if (FUNC5(key, "state")) {
                PathState state;

                state = FUNC4(value);
                if (state < 0)
                        FUNC2(u, "Failed to parse state value: %s", value);
                else
                        p->deserialized_state = state;

        } else if (FUNC5(key, "result")) {
                PathResult f;

                f = FUNC3(value);
                if (f < 0)
                        FUNC2(u, "Failed to parse result value: %s", value);
                else if (f != PATH_SUCCESS)
                        p->result = f;

        } else
                FUNC2(u, "Unknown serialization key: %s", key);

        return 0;
}