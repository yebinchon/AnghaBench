
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int LOG_DEBUG ;
 scalar_t__ geteuid () ;
 int log_tests_skipped (char*) ;
 int test_chown_recursive () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        if (geteuid() != 0)
                return log_tests_skipped("not running as root");

        test_chown_recursive();

        return EXIT_SUCCESS;
}
