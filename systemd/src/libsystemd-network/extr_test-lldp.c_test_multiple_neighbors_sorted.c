
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int sd_lldp_neighbor ;
typedef int sd_lldp ;
typedef int sd_event ;
typedef int frame6 ;
typedef int frame5 ;
typedef int frame4 ;
typedef int frame3 ;
typedef int frame2 ;
typedef int frame1 ;


 int SD_LLDP_CHASSIS_SUBTYPE_CHASSIS_COMPONENT ;
 int SD_LLDP_PORT_SUBTYPE_PORT_COMPONENT ;
 int assert_se (int) ;
 int free (int **) ;
 int lldp_handler ;
 int lldp_handler_calls ;
 scalar_t__ memcmp (void const*,char const*,size_t) ;
 int sd_event_run (int *,int ) ;
 int sd_lldp_get_neighbors (int *,int ***) ;
 scalar_t__ sd_lldp_neighbor_get_chassis_id (int *,int*,void const**,size_t*) ;
 scalar_t__ sd_lldp_neighbor_get_port_id (int *,int*,void const**,size_t*) ;
 scalar_t__ sd_lldp_neighbor_get_ttl (int *,int*) ;
 int sd_lldp_neighbor_unref (int *) ;
 scalar_t__ start_lldp (int **,int *,int ,int *) ;
 scalar_t__ stop_lldp (int *) ;
 size_t strlen (char const*) ;
 int * test_fd ;
 int write (int ,int const*,int) ;

__attribute__((used)) static void test_multiple_neighbors_sorted(sd_event *e) {

        static const uint8_t frame1[] = {

                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,
                0x88, 0xcc,

                0x02, 0x04, 0x01, '1', '/', '2',
                0x04, 0x04, 0x02, '2', '/', '3',
                0x06, 0x02, 0x00, 0x78,
                0x00, 0x00
        };
        static const uint8_t frame2[] = {

                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,
                0x88, 0xcc,

                0x02, 0x04, 0x01, '2', '/', '1',
                0x04, 0x04, 0x02, '1', '/', '3',
                0x06, 0x02, 0x00, 0x78,
                0x00, 0x00
        };
        static const uint8_t frame3[] = {

                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,
                0x88, 0xcc,

                0x02, 0x05, 0x01, '2', '/', '1', '0',
                0x04, 0x04, 0x02, '1', '/', '0',
                0x06, 0x02, 0x00, 0x78,
                0x00, 0x00
        };
        static const uint8_t frame4[] = {

                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,
                0x88, 0xcc,

                0x02, 0x05, 0x01, '2', '/', '1', '9',
                0x04, 0x04, 0x02, '1', '/', '0',
                0x06, 0x02, 0x00, 0x78,
                0x00, 0x00
        };
        static const uint8_t frame5[] = {

                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,
                0x88, 0xcc,

                0x02, 0x04, 0x01, '1', '/', '2',
                0x04, 0x05, 0x02, '2', '/', '1', '0',
                0x06, 0x02, 0x00, 0x78,
                0x00, 0x00
        };
        static const uint8_t frame6[] = {

                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,
                0x88, 0xcc,

                0x02, 0x04, 0x01, '1', '/', '2',
                0x04, 0x05, 0x02, '2', '/', '3', '9',
                0x06, 0x02, 0x00, 0x78,
                0x00, 0x00
        };
        static const char* expected[] = {

                "1/2", "2/10",
                "1/2", "2/3",
                "1/2", "2/39",
                "2/1", "1/3",
                "2/10", "1/0",
                "2/19", "1/0",
        };

        sd_lldp *lldp;
        sd_lldp_neighbor **neighbors;
        int i;
        uint8_t type;
        const void *data;
        size_t length, expected_length;
        uint16_t ttl;

        lldp_handler_calls = 0;
        assert_se(start_lldp(&lldp, e, lldp_handler, ((void*)0)) == 0);

        assert_se(write(test_fd[1], frame1, sizeof(frame1)) == sizeof(frame1));
        sd_event_run(e, 0);
        assert_se(write(test_fd[1], frame2, sizeof(frame2)) == sizeof(frame2));
        sd_event_run(e, 0);
        assert_se(write(test_fd[1], frame3, sizeof(frame3)) == sizeof(frame3));
        sd_event_run(e, 0);
        assert_se(write(test_fd[1], frame4, sizeof(frame4)) == sizeof(frame4));
        sd_event_run(e, 0);
        assert_se(write(test_fd[1], frame5, sizeof(frame5)) == sizeof(frame5));
        sd_event_run(e, 0);
        assert_se(write(test_fd[1], frame6, sizeof(frame6)) == sizeof(frame6));
        sd_event_run(e, 0);
        assert_se(lldp_handler_calls == 6);

        assert_se(sd_lldp_get_neighbors(lldp, &neighbors) == 6);

        for (i = 0; i < 6; i++) {
                assert_se(sd_lldp_neighbor_get_chassis_id(neighbors[i], &type, &data, &length) == 0);
                assert_se(type == SD_LLDP_CHASSIS_SUBTYPE_CHASSIS_COMPONENT);
                expected_length = strlen(expected[2 * i]);
                assert_se(length == expected_length);
                assert_se(memcmp(data, expected[2 * i], expected_length) == 0);

                assert_se(sd_lldp_neighbor_get_port_id(neighbors[i], &type, &data, &length) == 0);
                assert_se(type == SD_LLDP_PORT_SUBTYPE_PORT_COMPONENT);
                expected_length = strlen(expected[2 * i + 1]);
                assert_se(length == expected_length);
                assert_se(memcmp(data, expected[2 * i + 1], expected_length) == 0);

                assert_se(sd_lldp_neighbor_get_ttl(neighbors[i], &ttl) == 0);
                assert_se(ttl == 120);
        }

        for (i = 0; i < 6; i++)
                sd_lldp_neighbor_unref(neighbors[i]);
        free(neighbors);

        assert_se(stop_lldp(lldp) == 0);
}
