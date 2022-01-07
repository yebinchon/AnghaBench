
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
typedef scalar_t__ uint64_t ;
struct pollfd {int events; int fd; } ;
typedef int sd_login_monitor ;


 int CLOCK_MONOTONIC ;
 int assert_se (int) ;
 scalar_t__ now (int ) ;
 int poll (struct pollfd*,int,int) ;
 int printf (char*) ;
 int sd_login_monitor_flush (int *) ;
 int sd_login_monitor_get_events (int *) ;
 int sd_login_monitor_get_fd (int *) ;
 scalar_t__ sd_login_monitor_get_timeout (int *,scalar_t__*) ;
 int sd_login_monitor_new (char*,int **) ;
 int sd_login_monitor_unref (int *) ;

__attribute__((used)) static void test_monitor(void) {
        sd_login_monitor *m = ((void*)0);
        unsigned n;
        int r;

        r = sd_login_monitor_new("session", &m);
        assert_se(r >= 0);

        for (n = 0; n < 5; n++) {
                struct pollfd pollfd = {};
                usec_t timeout, nw;

                assert_se((pollfd.fd = sd_login_monitor_get_fd(m)) >= 0);
                assert_se((pollfd.events = sd_login_monitor_get_events(m)) >= 0);

                assert_se(sd_login_monitor_get_timeout(m, &timeout) >= 0);

                nw = now(CLOCK_MONOTONIC);

                r = poll(&pollfd, 1,
                         timeout == (uint64_t) -1 ? -1 :
                         timeout > nw ? (int) ((timeout - nw) / 1000) :
                         0);

                assert_se(r >= 0);

                sd_login_monitor_flush(m);
                printf("Wake!\n");
        }

        sd_login_monitor_unref(m);
}
