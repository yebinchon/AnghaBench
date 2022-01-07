
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_open () ;
 int log_parse_environment () ;
 int test_parse_boolean () ;
 int test_parse_dev () ;
 int test_parse_errno () ;
 int test_parse_mode () ;
 int test_parse_mtu () ;
 int test_parse_nice () ;
 int test_parse_percent () ;
 int test_parse_percent_unbounded () ;
 int test_parse_permille () ;
 int test_parse_permille_unbounded () ;
 int test_parse_pid () ;
 int test_parse_range () ;
 int test_parse_size () ;
 int test_parse_syscall_and_errno () ;
 int test_safe_atod () ;
 int test_safe_atoi16 () ;
 int test_safe_atoi64 () ;
 int test_safe_atolli () ;
 int test_safe_atou16 () ;
 int test_safe_atou64 () ;
 int test_safe_atoux16 () ;

int main(int argc, char *argv[]) {
        log_parse_environment();
        log_open();

        test_parse_boolean();
        test_parse_pid();
        test_parse_mode();
        test_parse_size();
        test_parse_range();
        test_safe_atolli();
        test_safe_atou16();
        test_safe_atoi16();
        test_safe_atoux16();
        test_safe_atou64();
        test_safe_atoi64();
        test_safe_atod();
        test_parse_percent();
        test_parse_percent_unbounded();
        test_parse_permille();
        test_parse_permille_unbounded();
        test_parse_nice();
        test_parse_dev();
        test_parse_errno();
        test_parse_syscall_and_errno();
        test_parse_mtu();

        return 0;
}
