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
struct TYPE_3__ {int was_abandoned; int /*<<< orphan*/  controller; scalar_t__ deserialized_state; } ;
typedef  scalar_t__ ScopeState ;
typedef  TYPE_1__ Scope ;
typedef  char const FDSet ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,char const*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(Unit *u, const char *key, const char *value, FDSet *fds) {
        Scope *s = FUNC0(u);
        int r;

        FUNC1(u);
        FUNC1(key);
        FUNC1(value);
        FUNC1(fds);

        if (FUNC7(key, "state")) {
                ScopeState state;

                state = FUNC6(value);
                if (state < 0)
                        FUNC4(u, "Failed to parse state value: %s", value);
                else
                        s->deserialized_state = state;

        } else if (FUNC7(key, "was-abandoned")) {
                int k;

                k = FUNC5(value);
                if (k < 0)
                        FUNC4(u, "Failed to parse boolean value: %s", value);
                else
                        s->was_abandoned = k;
        } else if (FUNC7(key, "controller")) {

                r = FUNC2(&s->controller, value);
                if (r < 0)
                        return FUNC3();

        } else
                FUNC4(u, "Unknown serialization key: %s", key);

        return 0;
}