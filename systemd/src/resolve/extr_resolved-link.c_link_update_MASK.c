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
struct TYPE_8__ {scalar_t__ llmnr_support; scalar_t__ mdns_support; int /*<<< orphan*/  manager; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 scalar_t__ RESOLVE_SUPPORT_NO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(Link *l) {
        int r;

        FUNC0(l);

        FUNC4(l);
        FUNC3(l);

        if (l->llmnr_support != RESOLVE_SUPPORT_NO) {
                r = FUNC5(l->manager);
                if (r < 0)
                        return r;
        }

        if (l->mdns_support != RESOLVE_SUPPORT_NO) {
                r = FUNC6(l->manager);
                if (r < 0)
                        return r;
        }

        FUNC2(l);
        FUNC1(l, false);

        return 0;
}