#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UnitActiveState ;
struct TYPE_13__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_12__ {int (* stop ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int EALREADY ; 
 int EBADR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 

int FUNC8(Unit *u) {
        UnitActiveState state;
        Unit *following;

        FUNC2(u);

        state = FUNC5(u);
        if (FUNC0(state))
                return -EALREADY;

        following = FUNC7(u);
        if (following) {
                FUNC3(u, "Redirecting stop request from %s to %s.", u->id, following->id);
                return FUNC8(following);
        }

        if (!FUNC1(u)->stop)
                return -EBADR;

        FUNC6(u);

        return FUNC1(u)->stop(u);
}