
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int ambient_capabilities_supported () ;
 int fork_test (int ) ;
 scalar_t__ getuid () ;
 int log_info (char*,int ) ;
 int log_tests_skipped (char*) ;
 scalar_t__ setup_tests (int*) ;
 int show_capabilities () ;
 int test_drop_privileges () ;
 int test_ensure_cap_64bit () ;
 int test_have_effective_cap ;
 int test_last_cap_file () ;
 int test_last_cap_probe () ;
 int test_set_ambient_caps ;
 int test_setup_logging (int ) ;
 int test_update_inherited_set () ;
 int yes_no (int ) ;

int main(int argc, char *argv[]) {
        bool run_ambient;

        test_setup_logging(LOG_INFO);

        test_ensure_cap_64bit();

        test_last_cap_file();
        test_last_cap_probe();

        log_info("have ambient caps: %s", yes_no(ambient_capabilities_supported()));

        if (getuid() != 0)
                return log_tests_skipped("not running as root");

        if (setup_tests(&run_ambient) < 0)
                return log_tests_skipped("setup failed");

        show_capabilities();

        test_drop_privileges();
        test_update_inherited_set();

        fork_test(test_have_effective_cap);

        if (run_ambient)
                fork_test(test_set_ambient_caps);

        return 0;
}
