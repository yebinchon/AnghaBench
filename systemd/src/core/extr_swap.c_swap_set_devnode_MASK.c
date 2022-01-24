#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__* manager; } ;
struct TYPE_14__ {scalar_t__ devnode; } ;
struct TYPE_13__ {int /*<<< orphan*/ * swaps_by_devnode; } ;
typedef  TYPE_2__ Swap ;
typedef  int /*<<< orphan*/  Hashmap ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 TYPE_7__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  path_hash_ops ; 
 int /*<<< orphan*/  same_devnode ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(Swap *s, const char *devnode) {
        Hashmap *swaps;
        Swap *first;
        int r;

        FUNC3(s);

        r = FUNC4(&FUNC2(s)->manager->swaps_by_devnode, &path_hash_ops);
        if (r < 0)
                return r;

        swaps = FUNC2(s)->manager->swaps_by_devnode;

        if (s->devnode) {
                first = FUNC5(swaps, s->devnode);

                FUNC1(same_devnode, first, s);
                if (first)
                        FUNC7(swaps, first->devnode, first);
                else
                        FUNC6(swaps, s->devnode);

                s->devnode = FUNC8(s->devnode);
        }

        if (devnode) {
                s->devnode = FUNC9(devnode);
                if (!s->devnode)
                        return -ENOMEM;

                first = FUNC5(swaps, s->devnode);
                FUNC0(same_devnode, first, s);

                return FUNC7(swaps, first->devnode, first);
        }

        return 0;
}