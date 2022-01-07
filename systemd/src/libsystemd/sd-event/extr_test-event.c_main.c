
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int test_basic () ;
 int test_inotify (int) ;
 int test_rtqueue () ;
 int test_sd_event_now () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_INFO);

        test_basic();
        test_sd_event_now();
        test_rtqueue();

        test_inotify(100);
        test_inotify(33000);

        return 0;
}
