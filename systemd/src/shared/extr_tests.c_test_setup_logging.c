
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_open () ;
 int log_parse_environment () ;
 int log_set_max_level (int) ;

void test_setup_logging(int level) {
        log_set_max_level(level);
        log_parse_environment();
        log_open();
}
