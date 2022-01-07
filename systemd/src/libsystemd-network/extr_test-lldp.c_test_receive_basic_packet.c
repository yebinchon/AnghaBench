
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int sd_lldp_neighbor ;
typedef int sd_lldp ;
typedef int sd_event ;
typedef int frame ;


 size_t ETH_ALEN ;
 int SD_LLDP_CHASSIS_SUBTYPE_MAC_ADDRESS ;
 int SD_LLDP_PORT_SUBTYPE_INTERFACE_NAME ;
 int assert_se (int) ;
 int free (int **) ;
 int lldp_handler ;
 int lldp_handler_calls ;
 int memcmp (void const*,char*,int) ;
 int sd_event_run (int *,int ) ;
 int sd_lldp_get_neighbors (int *,int ***) ;
 scalar_t__ sd_lldp_neighbor_get_chassis_id (int *,int*,void const**,size_t*) ;
 scalar_t__ sd_lldp_neighbor_get_port_description (int *,char const**) ;
 scalar_t__ sd_lldp_neighbor_get_port_id (int *,int*,void const**,size_t*) ;
 scalar_t__ sd_lldp_neighbor_get_system_description (int *,char const**) ;
 scalar_t__ sd_lldp_neighbor_get_system_name (int *,char const**) ;
 scalar_t__ sd_lldp_neighbor_get_ttl (int *,int*) ;
 int sd_lldp_neighbor_unref (int *) ;
 scalar_t__ start_lldp (int **,int *,int ,int *) ;
 scalar_t__ stop_lldp (int *) ;
 int streq (char const*,char*) ;
 int * test_fd ;
 int write (int ,int const*,int) ;

__attribute__((used)) static void test_receive_basic_packet(sd_event *e) {

        static const uint8_t frame[] = {

                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,
                0x88, 0xcc,

                0x02, 0x07, 0x04, 0x00, 0x01, 0x02,
                0x03, 0x04, 0x05,
                0x04, 0x04, 0x05, 0x31, 0x2f, 0x33,
                0x06, 0x02, 0x00, 0x78,

                0x08, 0x04, 0x50, 0x6f, 0x72, 0x74,
                0x0a, 0x03, 0x53, 0x59, 0x53,
                0x0c, 0x04, 0x66, 0x6f, 0x6f, 0x00,
                0x00, 0x00
        };

        sd_lldp *lldp;
        sd_lldp_neighbor **neighbors;
        uint8_t type;
        const void *data;
        uint16_t ttl;
        size_t length;
        const char *str;

        lldp_handler_calls = 0;
        assert_se(start_lldp(&lldp, e, lldp_handler, ((void*)0)) == 0);

        assert_se(write(test_fd[1], frame, sizeof(frame)) == sizeof(frame));
        sd_event_run(e, 0);
        assert_se(lldp_handler_calls == 1);
        assert_se(sd_lldp_get_neighbors(lldp, &neighbors) == 1);

        assert_se(sd_lldp_neighbor_get_chassis_id(neighbors[0], &type, &data, &length) == 0);
        assert_se(type == SD_LLDP_CHASSIS_SUBTYPE_MAC_ADDRESS);
        assert_se(length == ETH_ALEN);
        assert_se(!memcmp(data, "\x00\x01\x02\x03\x04\x05", ETH_ALEN));

        assert_se(sd_lldp_neighbor_get_port_id(neighbors[0], &type, &data, &length) == 0);
        assert_se(type == SD_LLDP_PORT_SUBTYPE_INTERFACE_NAME);
        assert_se(length == 3);
        assert_se(!memcmp(data, "1/3", 3));

        assert_se(sd_lldp_neighbor_get_port_description(neighbors[0], &str) == 0);
        assert_se(streq(str, "Port"));

        assert_se(sd_lldp_neighbor_get_system_name(neighbors[0], &str) == 0);
        assert_se(streq(str, "SYS"));

        assert_se(sd_lldp_neighbor_get_system_description(neighbors[0], &str) == 0);
        assert_se(streq(str, "foo"));

        assert_se(sd_lldp_neighbor_get_ttl(neighbors[0], &ttl) == 0);
        assert_se(ttl == 120);

        sd_lldp_neighbor_unref(neighbors[0]);
        free(neighbors);

        assert_se(stop_lldp(lldp) == 0);
}
