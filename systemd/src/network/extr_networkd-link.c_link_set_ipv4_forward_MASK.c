#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Link ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC3(Link *link) {
        int r;

        if (!FUNC0(link))
                return 0;

        /* We propagate the forwarding flag from one interface to the
         * global setting one way. This means: as long as at least one
         * interface was configured at any time that had IP forwarding
         * enabled the setting will stay on for good. We do this
         * primarily to keep IPv4 and IPv6 packet forwarding behaviour
         * somewhat in sync (see below). */

        r = FUNC2(AF_INET, NULL, "ip_forward", "1");
        if (r < 0)
                FUNC1(link, r, "Cannot turn on IPv4 packet forwarding, ignoring: %m");

        return 0;
}