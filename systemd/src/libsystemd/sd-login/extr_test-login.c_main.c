
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_info (char*) ;
 int log_open () ;
 int log_parse_environment () ;
 scalar_t__ streq_ptr (char*,char*) ;
 int test_login () ;
 int test_monitor () ;

int main(int argc, char* argv[]) {
        log_parse_environment();
        log_open();

        log_info("/* Information printed is from the live system */");

        test_login();

        if (streq_ptr(argv[1], "-m"))
                test_monitor();

        return 0;
}
