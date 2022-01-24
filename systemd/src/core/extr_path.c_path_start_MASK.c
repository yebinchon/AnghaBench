#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_8__ {int /*<<< orphan*/  result; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Path ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PATH_DEAD ; 
 int /*<<< orphan*/  PATH_FAILED ; 
 int /*<<< orphan*/  PATH_FAILURE_START_LIMIT_HIT ; 
 int /*<<< orphan*/  PATH_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(Unit *u) {
        Path *p = FUNC1(u);
        int r;

        FUNC2(p);
        FUNC2(FUNC0(p->state, PATH_DEAD, PATH_FAILED));

        r = FUNC8(u);
        if (r < 0)
                return r;

        r = FUNC7(u);
        if (r < 0) {
                FUNC3(p, PATH_FAILURE_START_LIMIT_HIT);
                return r;
        }

        r = FUNC6(u);
        if (r < 0)
                return r;

        FUNC5(p);

        p->result = PATH_SUCCESS;
        FUNC4(p, true, true);

        return 1;
}