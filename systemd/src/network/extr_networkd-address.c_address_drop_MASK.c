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
struct TYPE_7__ {int /*<<< orphan*/ * link; } ;
typedef  int /*<<< orphan*/  Link ;
typedef  TYPE_1__ Address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 

int FUNC7(Address *address) {
        Link *link;
        bool ready;
        int r;

        FUNC3(address);

        ready = FUNC1(address);
        link = address->link;

        r = FUNC2(address);
        if (r < 0)
                FUNC6(link, r, "Failed to disable IP masquerading, ignoring: %m");

        FUNC0(address);

        FUNC5(link, true);

        if (link && !ready)
                FUNC4(link);

        return 0;
}