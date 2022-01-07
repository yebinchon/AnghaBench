
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int log_tests_skipped_errno (int,char*) ;
 int test_basic_enumerate () ;
 int test_failed_enumerate () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        int r;

        test_setup_logging(LOG_DEBUG);

        r = test_failed_enumerate();
        if (r < 0)
                return log_tests_skipped_errno(r, "cannot open hwdb");

        test_basic_enumerate();

        return 0;
}
