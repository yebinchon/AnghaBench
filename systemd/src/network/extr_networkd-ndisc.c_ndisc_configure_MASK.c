#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ndisc; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  mac; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ndisc_handler ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(Link *link) {
        int r;

        FUNC0(link);

        r = FUNC2(&link->ndisc);
        if (r < 0)
                return r;

        r = FUNC1(link->ndisc, NULL, 0);
        if (r < 0)
                return r;

        r = FUNC5(link->ndisc, &link->mac);
        if (r < 0)
                return r;

        r = FUNC4(link->ndisc, link->ifindex);
        if (r < 0)
                return r;

        r = FUNC3(link->ndisc, ndisc_handler, link);
        if (r < 0)
                return r;

        return 0;
}