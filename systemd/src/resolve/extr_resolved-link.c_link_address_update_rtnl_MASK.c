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
struct TYPE_8__ {int /*<<< orphan*/  link; int /*<<< orphan*/  scope; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ sd_netlink_message ;
typedef  TYPE_1__ LinkAddress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC5(LinkAddress *a, sd_netlink_message *m) {
        int r;
        FUNC0(a);
        FUNC0(m);

        r = FUNC3(m, &a->flags);
        if (r < 0)
                return r;

        FUNC4(m, &a->scope);

        FUNC2(a->link);
        FUNC1(a->link, false);

        return 0;
}