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
 int /*<<< orphan*/  SD_LLDP_OUI_802_1 ; 
 int /*<<< orphan*/  SD_LLDP_OUI_802_1_SUBTYPE_LINK_AGGREGATION ; 
 int /*<<< orphan*/  SD_LLDP_OUI_802_1_SUBTYPE_MANAGEMENT_VID ; 
 int /*<<< orphan*/  SD_LLDP_OUI_802_1_SUBTYPE_PORT_PROTOCOL_VLAN_ID ; 
 int /*<<< orphan*/  SD_LLDP_OUI_802_1_SUBTYPE_PORT_VLAN_ID ; 
 int /*<<< orphan*/  SD_LLDP_OUI_802_1_SUBTYPE_VLAN_NAME ; 
 int /*<<< orphan*/  SD_LLDP_OUI_802_3 ; 
 int /*<<< orphan*/  SD_LLDP_OUI_802_3_SUBTYPE_POWER_VIA_MDI ; 
 int /*<<< orphan*/  SD_LLDP_TYPE_CHASSIS_ID ; 
 int /*<<< orphan*/  SD_LLDP_TYPE_END ; 
 int /*<<< orphan*/  SD_LLDP_TYPE_PORT_ID ; 
 int /*<<< orphan*/  SD_LLDP_TYPE_TTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  lldp_handler ; 
 int lldp_handler_calls ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * test_fd ; 
 int FUNC11 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC12(sd_event *e) {
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
                0x04, 0x04, 0x05, 0x31, 0x2f, 0x33,     /* Port TLV: interface name, "1/3" */
                0x06, 0x02, 0x00, 0x78,                 /* TTL: 120 seconds */
                /* LLDP optional TLVs */
                0xfe, 0x06, 0x00, 0x80, 0xc2, 0x01,     /* Port VLAN ID: 0x1234 */
                0x12, 0x34,
                0xfe, 0x07, 0x00, 0x80, 0xc2, 0x02,     /* Port and protocol: flag 1, PPVID 0x7788 */
                0x01, 0x77, 0x88,
                0xfe, 0x0d, 0x00, 0x80, 0xc2, 0x03,     /* VLAN Name: ID 0x1234, name "Vlan51" */
                0x12, 0x34, 0x06, 0x56, 0x6c, 0x61,
                0x6e, 0x35, 0x31,
                0xfe, 0x06, 0x00, 0x80, 0xc2, 0x06,     /* Management VID: 0x0102 */
                0x01, 0x02,
                0xfe, 0x09, 0x00, 0x80, 0xc2, 0x07,     /* Link aggregation: status 1, ID 0x00140012 */
                0x01, 0x00, 0x14, 0x00, 0x12,
                0xfe, 0x07, 0x00, 0x12, 0x0f, 0x02,     /* 802.3 Power via MDI: PSE, MDI enabled */
                0x07, 0x01, 0x00,
                0x00, 0x00                              /* End of LLDPDU */
        };

        lldp_handler_calls = 0;
        FUNC0(FUNC9(&lldp, e, lldp_handler, NULL) == 0);

        FUNC0(FUNC11(test_fd[1], frame, sizeof(frame)) == sizeof(frame));
        FUNC2(e, 0);
        FUNC0(lldp_handler_calls == 1);
        FUNC0(FUNC3(lldp, &neighbors) == 1);

        FUNC0(FUNC7(neighbors[0]) >= 0);
        FUNC0(FUNC5(neighbors[0], SD_LLDP_TYPE_CHASSIS_ID) > 0);
        FUNC0(FUNC6(neighbors[0]) > 0);
        FUNC0(FUNC5(neighbors[0], SD_LLDP_TYPE_PORT_ID) > 0);
        FUNC0(FUNC6(neighbors[0]) > 0);
        FUNC0(FUNC5(neighbors[0], SD_LLDP_TYPE_TTL) > 0);
        FUNC0(FUNC6(neighbors[0]) > 0);
        FUNC0(FUNC4(neighbors[0], SD_LLDP_OUI_802_1, SD_LLDP_OUI_802_1_SUBTYPE_PORT_VLAN_ID) > 0);
        FUNC0(FUNC6(neighbors[0]) > 0);
        FUNC0(FUNC4(neighbors[0], SD_LLDP_OUI_802_1, SD_LLDP_OUI_802_1_SUBTYPE_PORT_PROTOCOL_VLAN_ID) > 0);
        FUNC0(FUNC6(neighbors[0]) > 0);
        FUNC0(FUNC4(neighbors[0], SD_LLDP_OUI_802_1, SD_LLDP_OUI_802_1_SUBTYPE_VLAN_NAME) > 0);
        FUNC0(FUNC6(neighbors[0]) > 0);
        FUNC0(FUNC4(neighbors[0], SD_LLDP_OUI_802_1, SD_LLDP_OUI_802_1_SUBTYPE_MANAGEMENT_VID) > 0);
        FUNC0(FUNC6(neighbors[0]) > 0);
        FUNC0(FUNC4(neighbors[0], SD_LLDP_OUI_802_1, SD_LLDP_OUI_802_1_SUBTYPE_LINK_AGGREGATION) > 0);
        FUNC0(FUNC6(neighbors[0]) > 0);
        FUNC0(FUNC4(neighbors[0], SD_LLDP_OUI_802_3, SD_LLDP_OUI_802_3_SUBTYPE_POWER_VIA_MDI) > 0);
        FUNC0(FUNC6(neighbors[0]) > 0);
        FUNC0(FUNC5(neighbors[0], SD_LLDP_TYPE_END) > 0);
        FUNC0(FUNC6(neighbors[0]) == 0);

        FUNC8(neighbors[0]);
        FUNC1(neighbors);

        FUNC0(FUNC10(lldp) == 0);
}