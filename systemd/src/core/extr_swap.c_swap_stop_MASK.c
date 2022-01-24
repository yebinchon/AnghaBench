#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_6__ {int state; } ;
typedef  TYPE_1__ Swap ;

/* Variables and functions */
 int EPERM ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
#define  SWAP_ACTIVATING 134 
#define  SWAP_ACTIVATING_DONE 133 
#define  SWAP_ACTIVE 132 
#define  SWAP_CLEANING 131 
#define  SWAP_DEACTIVATING 130 
#define  SWAP_DEACTIVATING_SIGKILL 129 
#define  SWAP_DEACTIVATING_SIGTERM 128 
 int /*<<< orphan*/  SWAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Unit *u) {
        Swap *s = FUNC0(u);

        FUNC1(s);

        switch (s->state) {

        case SWAP_DEACTIVATING:
        case SWAP_DEACTIVATING_SIGTERM:
        case SWAP_DEACTIVATING_SIGKILL:
                /* Already on it */
                return 0;

        case SWAP_ACTIVATING:
        case SWAP_ACTIVATING_DONE:
                /* There's a control process pending, directly enter kill mode */
                FUNC5(s, SWAP_DEACTIVATING_SIGTERM, SWAP_SUCCESS);
                return 0;

        case SWAP_ACTIVE:
                if (FUNC3() > 0)
                        return -EPERM;

                FUNC4(s);
                return 1;

        case SWAP_CLEANING:
                /* If we are currently cleaning, then abort it, brutally. */
                FUNC5(s, SWAP_DEACTIVATING_SIGKILL, SWAP_SUCCESS);
                return 0;

        default:
                FUNC2("Unexpected state.");
        }
}