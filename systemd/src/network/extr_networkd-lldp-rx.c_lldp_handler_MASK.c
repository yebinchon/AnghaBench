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
typedef  scalar_t__ sd_lldp_event ;
typedef  int /*<<< orphan*/  sd_lldp ;
typedef  int /*<<< orphan*/  Link ;

/* Variables and functions */
 scalar_t__ SD_LLDP_EVENT_ADDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC6(sd_lldp *lldp, sd_lldp_event event, sd_lldp_neighbor *n, void *userdata) {
        Link *link = userdata;
        int r;

        FUNC0(link);

        (void) FUNC3(link);

        if (FUNC1(link) && event == SD_LLDP_EVENT_ADDED) {
                /* If we received information about a new neighbor, restart the LLDP "fast" logic */

                FUNC4(link, "Received LLDP datagram from previously unknown neighbor, restarting 'fast' LLDP transmission.");

                r = FUNC2(link);
                if (r < 0)
                        FUNC5(link, r, "Failed to restart LLDP transmission: %m");
        }
}