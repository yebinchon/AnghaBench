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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  sd_lldp_neighbor ;
typedef  int /*<<< orphan*/  sd_lldp ;
typedef  int /*<<< orphan*/  sd_event ;
typedef  int /*<<< orphan*/  frame ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int SD_LLDP_CHASSIS_SUBTYPE_MAC_ADDRESS ; 
 int SD_LLDP_PORT_SUBTYPE_INTERFACE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  lldp_handler ; 
 int lldp_handler_calls ; 
 int /*<<< orphan*/  FUNC2 (void const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*,void const**,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*,void const**,size_t*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/ * test_fd ; 
 int FUNC15 (int /*<<< orphan*/ ,int const*,int) ; 

__attribute__((used)) static void FUNC16(sd_event *e) {

        static const uint8_t frame[] = {
                /* Ethernet header */
                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,     /* Destination MAC */
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,     /* Source MAC */
                0x88, 0xcc,                             /* Ethertype */
                /* LLDP mandatory TLVs */
                0x02, 0x07, 0x04, 0x00, 0x01, 0x02,     /* Chassis: MAC, 00:01:02:03:04:05 */
                0x03, 0x04, 0x05,
                0x04, 0x04, 0x05, 0x31, 0x2f, 0x33,     /* Port: interface name, "1/3" */
                0x06, 0x02, 0x00, 0x78,                 /* TTL: 120 seconds */
                /* LLDP optional TLVs */
                0x08, 0x04, 0x50, 0x6f, 0x72, 0x74,     /* Port Description: "Port" */
                0x0a, 0x03, 0x53, 0x59, 0x53,           /* System Name: "SYS" */
                0x0c, 0x04, 0x66, 0x6f, 0x6f, 0x00,     /* System Description: "foo" (NULL-terminated) */
                0x00, 0x00                              /* End Of LLDPDU */
        };

        sd_lldp *lldp;
        sd_lldp_neighbor **neighbors;
        uint8_t type;
        const void *data;
        uint16_t ttl;
        size_t length;
        const char *str;

        lldp_handler_calls = 0;
        FUNC0(FUNC12(&lldp, e, lldp_handler, NULL) == 0);

        FUNC0(FUNC15(test_fd[1], frame, sizeof(frame)) == sizeof(frame));
        FUNC3(e, 0);
        FUNC0(lldp_handler_calls == 1);
        FUNC0(FUNC4(lldp, &neighbors) == 1);

        FUNC0(FUNC5(neighbors[0], &type, &data, &length) == 0);
        FUNC0(type == SD_LLDP_CHASSIS_SUBTYPE_MAC_ADDRESS);
        FUNC0(length == ETH_ALEN);
        FUNC0(!FUNC2(data, "\x00\x01\x02\x03\x04\x05", ETH_ALEN));

        FUNC0(FUNC7(neighbors[0], &type, &data, &length) == 0);
        FUNC0(type == SD_LLDP_PORT_SUBTYPE_INTERFACE_NAME);
        FUNC0(length == 3);
        FUNC0(!FUNC2(data, "1/3", 3));

        FUNC0(FUNC6(neighbors[0], &str) == 0);
        FUNC0(FUNC14(str, "Port"));

        FUNC0(FUNC9(neighbors[0], &str) == 0);
        FUNC0(FUNC14(str, "SYS"));

        FUNC0(FUNC8(neighbors[0], &str) == 0);
        FUNC0(FUNC14(str, "foo"));

        FUNC0(FUNC10(neighbors[0], &ttl) == 0);
        FUNC0(ttl == 120);

        FUNC11(neighbors[0]);
        FUNC1(neighbors);

        FUNC0(FUNC13(lldp) == 0);
}