#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
typedef  scalar_t__ UnitActiveState ;
struct TYPE_16__ {scalar_t__ load_state; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_15__ {int (* reload ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADR ; 
 int EINVAL ; 
 int ENOEXEC ; 
 scalar_t__ UNIT_ACTIVE ; 
 scalar_t__ UNIT_LOADED ; 
 scalar_t__ UNIT_RELOADING ; 
 TYPE_13__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC10(Unit *u) {
        UnitActiveState state;
        Unit *following;

        FUNC1(u);

        if (u->load_state != UNIT_LOADED)
                return -EINVAL;

        if (!FUNC7(u))
                return -EBADR;

        state = FUNC5(u);
        if (state == UNIT_RELOADING)
                return -EAGAIN;

        if (state != UNIT_ACTIVE) {
                FUNC3(u, "Unit cannot be reloaded because it is inactive.");
                return -ENOEXEC;
        }

        following = FUNC8(u);
        if (following) {
                FUNC2(u, "Redirecting reload request from %s to %s.", u->id, following->id);
                return FUNC10(following);
        }

        FUNC6(u);

        if (!FUNC0(u)->reload) {
                /* Unit doesn't have a reload function, but we need to propagate the reload anyway */
                FUNC9(u, FUNC5(u), FUNC5(u), 0);
                return 0;
        }

        return FUNC0(u)->reload(u);
}