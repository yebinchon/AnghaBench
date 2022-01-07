
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int assert_se (int) ;
 scalar_t__ getuid () ;
 int log_warning (char*) ;
 int test_fiemap (char*) ;
 int test_parse_sleep_config () ;
 int test_setup_logging (int ) ;
 int test_sleep () ;

int main(int argc, char* argv[]) {
        int i, r = 0, k;

        test_setup_logging(LOG_DEBUG);

        if (getuid() != 0)
                log_warning("This program is unlikely to work for unprivileged users");

        test_parse_sleep_config();
        test_sleep();

        if (argc <= 1)
                assert_se(test_fiemap(argv[0]) == 0);
        else
                for (i = 1; i < argc; i++) {
                        k = test_fiemap(argv[i]);
                        if (r == 0)
                                r = k;
                }

        return r;
}
