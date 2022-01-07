
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sd_lldp_neighbor ;
typedef int sd_lldp ;
typedef int sd_event ;
typedef int frame ;


 int SD_LLDP_OUI_802_1 ;
 int SD_LLDP_OUI_802_1_SUBTYPE_LINK_AGGREGATION ;
 int SD_LLDP_OUI_802_1_SUBTYPE_MANAGEMENT_VID ;
 int SD_LLDP_OUI_802_1_SUBTYPE_PORT_PROTOCOL_VLAN_ID ;
 int SD_LLDP_OUI_802_1_SUBTYPE_PORT_VLAN_ID ;
 int SD_LLDP_OUI_802_1_SUBTYPE_VLAN_NAME ;
 int SD_LLDP_OUI_802_3 ;
 int SD_LLDP_OUI_802_3_SUBTYPE_POWER_VIA_MDI ;
 int SD_LLDP_TYPE_CHASSIS_ID ;
 int SD_LLDP_TYPE_END ;
 int SD_LLDP_TYPE_PORT_ID ;
 int SD_LLDP_TYPE_TTL ;
 int assert_se (int) ;
 int free (int **) ;
 int lldp_handler ;
 int lldp_handler_calls ;
 int sd_event_run (int *,int ) ;
 int sd_lldp_get_neighbors (int *,int ***) ;
 scalar_t__ sd_lldp_neighbor_tlv_is_oui (int *,int ,int ) ;
 scalar_t__ sd_lldp_neighbor_tlv_is_type (int *,int ) ;
 scalar_t__ sd_lldp_neighbor_tlv_next (int *) ;
 scalar_t__ sd_lldp_neighbor_tlv_rewind (int *) ;
 int sd_lldp_neighbor_unref (int *) ;
 scalar_t__ start_lldp (int **,int *,int ,int *) ;
 scalar_t__ stop_lldp (int *) ;
 int * test_fd ;
 int write (int ,int*,int) ;

__attribute__((used)) static void test_receive_oui_packet(sd_event *e) {
        sd_lldp *lldp;
        sd_lldp_neighbor **neighbors;
        uint8_t frame[] = {

                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,
                0x88, 0xcc,

                0x02, 0x07, 0x04, 0x00, 0x01, 0x02,
                0x03, 0x04, 0x05,
                0x04, 0x04, 0x05, 0x31, 0x2f, 0x33,
                0x06, 0x02, 0x00, 0x78,

                0xfe, 0x06, 0x00, 0x80, 0xc2, 0x01,
                0x12, 0x34,
                0xfe, 0x07, 0x00, 0x80, 0xc2, 0x02,
                0x01, 0x77, 0x88,
                0xfe, 0x0d, 0x00, 0x80, 0xc2, 0x03,
                0x12, 0x34, 0x06, 0x56, 0x6c, 0x61,
                0x6e, 0x35, 0x31,
                0xfe, 0x06, 0x00, 0x80, 0xc2, 0x06,
                0x01, 0x02,
                0xfe, 0x09, 0x00, 0x80, 0xc2, 0x07,
                0x01, 0x00, 0x14, 0x00, 0x12,
                0xfe, 0x07, 0x00, 0x12, 0x0f, 0x02,
                0x07, 0x01, 0x00,
                0x00, 0x00
        };

        lldp_handler_calls = 0;
        assert_se(start_lldp(&lldp, e, lldp_handler, ((void*)0)) == 0);

        assert_se(write(test_fd[1], frame, sizeof(frame)) == sizeof(frame));
        sd_event_run(e, 0);
        assert_se(lldp_handler_calls == 1);
        assert_se(sd_lldp_get_neighbors(lldp, &neighbors) == 1);

        assert_se(sd_lldp_neighbor_tlv_rewind(neighbors[0]) >= 0);
        assert_se(sd_lldp_neighbor_tlv_is_type(neighbors[0], SD_LLDP_TYPE_CHASSIS_ID) > 0);
        assert_se(sd_lldp_neighbor_tlv_next(neighbors[0]) > 0);
        assert_se(sd_lldp_neighbor_tlv_is_type(neighbors[0], SD_LLDP_TYPE_PORT_ID) > 0);
        assert_se(sd_lldp_neighbor_tlv_next(neighbors[0]) > 0);
        assert_se(sd_lldp_neighbor_tlv_is_type(neighbors[0], SD_LLDP_TYPE_TTL) > 0);
        assert_se(sd_lldp_neighbor_tlv_next(neighbors[0]) > 0);
        assert_se(sd_lldp_neighbor_tlv_is_oui(neighbors[0], SD_LLDP_OUI_802_1, SD_LLDP_OUI_802_1_SUBTYPE_PORT_VLAN_ID) > 0);
        assert_se(sd_lldp_neighbor_tlv_next(neighbors[0]) > 0);
        assert_se(sd_lldp_neighbor_tlv_is_oui(neighbors[0], SD_LLDP_OUI_802_1, SD_LLDP_OUI_802_1_SUBTYPE_PORT_PROTOCOL_VLAN_ID) > 0);
        assert_se(sd_lldp_neighbor_tlv_next(neighbors[0]) > 0);
        assert_se(sd_lldp_neighbor_tlv_is_oui(neighbors[0], SD_LLDP_OUI_802_1, SD_LLDP_OUI_802_1_SUBTYPE_VLAN_NAME) > 0);
        assert_se(sd_lldp_neighbor_tlv_next(neighbors[0]) > 0);
        assert_se(sd_lldp_neighbor_tlv_is_oui(neighbors[0], SD_LLDP_OUI_802_1, SD_LLDP_OUI_802_1_SUBTYPE_MANAGEMENT_VID) > 0);
        assert_se(sd_lldp_neighbor_tlv_next(neighbors[0]) > 0);
        assert_se(sd_lldp_neighbor_tlv_is_oui(neighbors[0], SD_LLDP_OUI_802_1, SD_LLDP_OUI_802_1_SUBTYPE_LINK_AGGREGATION) > 0);
        assert_se(sd_lldp_neighbor_tlv_next(neighbors[0]) > 0);
        assert_se(sd_lldp_neighbor_tlv_is_oui(neighbors[0], SD_LLDP_OUI_802_3, SD_LLDP_OUI_802_3_SUBTYPE_POWER_VIA_MDI) > 0);
        assert_se(sd_lldp_neighbor_tlv_next(neighbors[0]) > 0);
        assert_se(sd_lldp_neighbor_tlv_is_type(neighbors[0], SD_LLDP_TYPE_END) > 0);
        assert_se(sd_lldp_neighbor_tlv_next(neighbors[0]) == 0);

        sd_lldp_neighbor_unref(neighbors[0]);
        free(neighbors);

        assert_se(stop_lldp(lldp) == 0);
}
