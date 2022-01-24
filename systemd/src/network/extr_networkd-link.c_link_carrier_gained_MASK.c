#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_CONFIGURED ; 
 int /*<<< orphan*/  LINK_STATE_CONFIGURING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(Link *link) {
        int r;

        FUNC1(link);

        r = FUNC8(link);
        if (r < 0)
                return r;
        if (r > 0) {
                r = FUNC5(link, false);
                if (r < 0)
                        return r;
        }

        if (FUNC0(link->state, LINK_STATE_CONFIGURING, LINK_STATE_CONFIGURED)) {
                r = FUNC2(link);
                if (r < 0) {
                        FUNC3(link);
                        return r;
                }

                FUNC7(link, LINK_STATE_CONFIGURING);
                r = FUNC6(link);
                if (r < 0)
                        return r;
        }

        r = FUNC4(link);
        if (r < 0)
                return r;

        return 0;
}