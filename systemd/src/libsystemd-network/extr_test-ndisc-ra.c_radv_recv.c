
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sd_radv ;
typedef int sd_event_source ;
typedef int sd_event ;
typedef int buf ;


 int* advertisement ;
 int assert_se (int) ;
 int printf (char*,...) ;
 int read (int ,unsigned char**,int) ;
 int sd_event_exit (int *,int ) ;
 int * sd_radv_get_event (int *) ;
 scalar_t__ sd_radv_stop (int *) ;
 int * test_fd ;
 int test_stopped ;

__attribute__((used)) static int radv_recv(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        sd_radv *ra = userdata;
        unsigned char buf[168];
        size_t i;

        assert_se(read(test_fd[0], &buf, sizeof(buf)) == sizeof(buf));


        if (test_stopped) {
                advertisement[6] = 0x00;
                advertisement[7] = 0x00;
        }

        printf ("Received Router Advertisement with lifetime %u\n",
                (advertisement[6] << 8) + advertisement[7]);


        for (i = 0; i < sizeof(buf); i++) {
                if (!(i % 8))
                        printf("%3zd: ", i);

                printf("0x%02x", buf[i]);

                assert_se(buf[i] == advertisement[i]);

                if ((i + 1) % 8)
                        printf(", ");
                else
                        printf("\n");
        }

        if (test_stopped) {
                sd_event *e;

                e = sd_radv_get_event(ra);
                sd_event_exit(e, 0);

                return 0;
        }

        assert_se(sd_radv_stop(ra) >= 0);
        test_stopped = 1;

        return 0;
}
