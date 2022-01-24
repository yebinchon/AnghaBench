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
typedef  int /*<<< orphan*/  sd_lldp_neighbor ;
typedef  int /*<<< orphan*/  sd_lldp ;

/* Variables and functions */
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static int FUNC5(sd_lldp *lldp, sd_lldp_neighbor *n) {
        int r;

        FUNC0(lldp);
        FUNC0(n);

        r = FUNC2(n);
        if (r == -EBADMSG) /* Ignore bad messages */
                return 0;
        if (r < 0)
                return r;

        r = FUNC1(lldp, n);
        if (r < 0) {
                FUNC4(r, "Failed to add datagram. Ignoring.");
                return 0;
        }

        FUNC3("Successfully processed LLDP datagram.");
        return 0;
}