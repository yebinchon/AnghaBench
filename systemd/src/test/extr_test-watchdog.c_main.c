
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;


 int EPERM ;
 int LOG_DEBUG ;
 int USEC_PER_SEC ;
 int log_info (char*) ;
 int log_warning_errno (int,char*) ;
 int slow_tests_enabled () ;
 int test_setup_logging (int ) ;
 int usleep (int) ;
 int watchdog_close (int) ;
 int watchdog_ping () ;
 int watchdog_set_timeout (int*) ;

int main(int argc, char *argv[]) {
        usec_t t;
        unsigned i, count;
        int r;
        bool slow;

        test_setup_logging(LOG_DEBUG);

        slow = slow_tests_enabled();

        t = slow ? 10 * USEC_PER_SEC : 1 * USEC_PER_SEC;
        count = slow ? 5 : 3;

        r = watchdog_set_timeout(&t);
        if (r < 0)
                log_warning_errno(r, "Failed to open watchdog: %m");
        if (r == -EPERM)
                t = 0;

        for (i = 0; i < count; i++) {
                log_info("Pinging...");
                r = watchdog_ping();
                if (r < 0)
                        log_warning_errno(r, "Failed to ping watchdog: %m");

                usleep(t/2);
        }

        watchdog_close(1);
        return 0;
}
