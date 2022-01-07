
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sd_lldp_neighbor ;
typedef int sd_lldp ;
typedef int sd_event ;
typedef int frame ;


 int assert_se (int) ;
 int lldp_handler ;
 scalar_t__ lldp_handler_calls ;
 int sd_event_run (int *,int ) ;
 scalar_t__ sd_lldp_get_neighbors (int *,int ***) ;
 scalar_t__ start_lldp (int **,int *,int ,int *) ;
 scalar_t__ stop_lldp (int *) ;
 int * test_fd ;
 int write (int ,int*,int) ;

__attribute__((used)) static void test_receive_incomplete_packet(sd_event *e) {
        sd_lldp *lldp;
        sd_lldp_neighbor **neighbors;
        uint8_t frame[] = {

                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,
                0x88, 0xcc,

                0x02, 0x07, 0x04, 0x00, 0x01, 0x02,
                0x03, 0x04, 0x05,
                0x04, 0x04, 0x05, 0x31, 0x2f, 0x33,

                0x00, 0x00
        };

        lldp_handler_calls = 0;
        assert_se(start_lldp(&lldp, e, lldp_handler, ((void*)0)) == 0);

        assert_se(write(test_fd[1], frame, sizeof(frame)) == sizeof(frame));
        sd_event_run(e, 0);
        assert_se(lldp_handler_calls == 0);
        assert_se(sd_lldp_get_neighbors(lldp, &neighbors) == 0);

        assert_se(stop_lldp(lldp) == 0);
}
