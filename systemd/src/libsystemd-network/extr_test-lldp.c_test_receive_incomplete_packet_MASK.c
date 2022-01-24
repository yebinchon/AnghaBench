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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  sd_lldp_neighbor ;
typedef  int /*<<< orphan*/  sd_lldp ;
typedef  int /*<<< orphan*/  sd_event ;
typedef  int /*<<< orphan*/  frame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  lldp_handler ; 
 scalar_t__ lldp_handler_calls ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * test_fd ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC6(sd_event *e) {
        sd_lldp *lldp;
        sd_lldp_neighbor **neighbors;
        uint8_t frame[] = {
                /* Ethernet header */
                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,     /* Destination MAC */
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,     /* Source MAC */
                0x88, 0xcc,                             /* Ethertype */
                /* LLDP mandatory TLVs */
                0x02, 0x07, 0x04, 0x00, 0x01, 0x02,     /* Chassis: MAC, 00:01:02:03:04:05 */
                0x03, 0x04, 0x05,
                0x04, 0x04, 0x05, 0x31, 0x2f, 0x33,     /* Port: interface name, "1/3" */
                                                        /* Missing TTL */
                0x00, 0x00                              /* End Of LLDPDU */
        };

        lldp_handler_calls = 0;
        FUNC0(FUNC3(&lldp, e, lldp_handler, NULL) == 0);

        FUNC0(FUNC5(test_fd[1], frame, sizeof(frame)) == sizeof(frame));
        FUNC1(e, 0);
        FUNC0(lldp_handler_calls == 0);
        FUNC0(FUNC2(lldp, &neighbors) == 0);

        FUNC0(FUNC4(lldp) == 0);
}