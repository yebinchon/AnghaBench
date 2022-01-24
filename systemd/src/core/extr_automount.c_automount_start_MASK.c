#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_7__ {int /*<<< orphan*/  result; int /*<<< orphan*/  where; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Automount ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AUTOMOUNT_DEAD ; 
 int /*<<< orphan*/  AUTOMOUNT_FAILED ; 
 int /*<<< orphan*/  AUTOMOUNT_FAILURE_START_LIMIT_HIT ; 
 int /*<<< orphan*/  AUTOMOUNT_SUCCESS ; 
 int EEXIST ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(Unit *u) {
        Automount *a = FUNC0(u);
        int r;

        FUNC2(a);
        FUNC2(FUNC1(a->state, AUTOMOUNT_DEAD, AUTOMOUNT_FAILED));

        if (FUNC6(a->where, NULL, 0) > 0) {
                FUNC5(u, "Path %s is already a mount point, refusing start.", a->where);
                return -EEXIST;
        }

        r = FUNC9(u);
        if (r < 0)
                return r;

        r = FUNC8(u);
        if (r < 0) {
                FUNC3(a, AUTOMOUNT_FAILURE_START_LIMIT_HIT);
                return r;
        }

        r = FUNC7(u);
        if (r < 0)
                return r;

        a->result = AUTOMOUNT_SUCCESS;
        FUNC4(a);
        return 1;
}