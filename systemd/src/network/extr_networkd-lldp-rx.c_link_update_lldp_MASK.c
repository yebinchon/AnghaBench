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
struct TYPE_6__ {int flags; int /*<<< orphan*/  lldp; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (TYPE_1__*,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(Link *link) {
        int r;

        FUNC0(link);

        if (!link->lldp)
                return 0;

        if (link->flags & IFF_UP) {
                r = FUNC3(link->lldp);
                if (r < 0)
                        return FUNC2(link, r, "Failed to start LLDP: %m");
                if (r > 0)
                        FUNC1(link, "Started LLDP.");
        } else {
                r = FUNC4(link->lldp);
                if (r < 0)
                        return FUNC2(link, r, "Failed to stop LLDP: %m");
                if (r > 0)
                        FUNC1(link, "Stopped LLDP.");
        }

        return r;
}