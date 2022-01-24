#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int perpetual; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_10__ {int /*<<< orphan*/  deserialized_state; } ;
typedef  int /*<<< orphan*/  Slice ;
typedef  char const Manager ;

/* Variables and functions */
 TYPE_7__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SLICE_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int,char*,char const*) ; 
 TYPE_1__* FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (char const*,int,char const*,TYPE_1__**) ; 

__attribute__((used)) static int FUNC7(Manager *m, const char *name, Unit **ret) {
        Unit *u;
        int r;

        FUNC1(m);
        FUNC1(name);

        u = FUNC3(m, name);
        if (!u) {
                r = FUNC6(m, sizeof(Slice), name, &u);
                if (r < 0)
                        return FUNC2(r, "Failed to allocate the special %s unit: %m", name);
        }

        u->perpetual = true;
        FUNC0(u)->deserialized_state = SLICE_ACTIVE;

        FUNC5(u);
        FUNC4(u);

        if (ret)
                *ret = u;

        return 0;
}