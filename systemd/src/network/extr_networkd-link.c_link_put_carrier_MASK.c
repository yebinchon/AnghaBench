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
struct TYPE_6__ {int /*<<< orphan*/  ifindex; } ;
typedef  TYPE_1__ Link ;
typedef  int /*<<< orphan*/  Hashmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(Link *link, Link *carrier, Hashmap **h) {
        int r;

        FUNC1(link);
        FUNC1(carrier);

        if (link == carrier)
                return 0;

        if (FUNC3(*h, FUNC0(carrier->ifindex)))
                return 0;

        r = FUNC2(h, NULL);
        if (r < 0)
                return r;

        r = FUNC4(*h, FUNC0(carrier->ifindex), carrier);
        if (r < 0)
                return r;

        return 0;
}