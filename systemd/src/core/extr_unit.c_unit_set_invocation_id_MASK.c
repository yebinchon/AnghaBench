#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_id128_t ;
struct TYPE_8__ {scalar_t__* invocation_id_string; int /*<<< orphan*/  invocation_id; TYPE_1__* manager; } ;
typedef  TYPE_2__ Unit ;
struct TYPE_7__ {int /*<<< orphan*/  units_by_invocation_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_ID128_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  id128_hash_ops ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 

int FUNC7(Unit *u, sd_id128_t id) {
        int r;

        FUNC0(u);

        /* Set the invocation ID for this unit. If we cannot, this will not roll back, but reset the whole thing. */

        if (FUNC4(u->invocation_id, id))
                return 0;

        if (!FUNC5(u->invocation_id))
                (void) FUNC3(u->manager->units_by_invocation_id, &u->invocation_id, u);

        if (FUNC5(id)) {
                r = 0;
                goto reset;
        }

        r = FUNC1(&u->manager->units_by_invocation_id, &id128_hash_ops);
        if (r < 0)
                goto reset;

        u->invocation_id = id;
        FUNC6(id, u->invocation_id_string);

        r = FUNC2(u->manager->units_by_invocation_id, &u->invocation_id, u);
        if (r < 0)
                goto reset;

        return 0;

reset:
        u->invocation_id = SD_ID128_NULL;
        u->invocation_id_string[0] = 0;
        return r;
}