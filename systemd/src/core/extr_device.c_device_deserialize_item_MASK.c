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
struct TYPE_3__ {int /*<<< orphan*/  deserialized_found; scalar_t__ deserialized_state; } ;
typedef  char const FDSet ;
typedef  scalar_t__ DeviceState ;
typedef  TYPE_1__ Device ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,char*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(Unit *u, const char *key, const char *value, FDSet *fds) {
        Device *d = FUNC0(u);
        int r;

        FUNC1(u);
        FUNC1(key);
        FUNC1(value);
        FUNC1(fds);

        if (FUNC6(key, "state")) {
                DeviceState state;

                state = FUNC3(value);
                if (state < 0)
                        FUNC4(u, "Failed to parse state value, ignoring: %s", value);
                else
                        d->deserialized_state = state;

        } else if (FUNC6(key, "found")) {
                r = FUNC2(value, &d->deserialized_found);
                if (r < 0)
                        FUNC5(u, r, "Failed to parse found value '%s', ignoring: %m", value);

        } else
                FUNC4(u, "Unknown serialization key: %s", key);

        return 0;
}