
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ELEMENTSOF (int *) ;
 int * config_file ;
 int log_open () ;
 int log_parse_environment () ;
 int test_config_parse (unsigned int,int ) ;
 int test_config_parse_iec_size () ;
 int test_config_parse_iec_uint64 () ;
 int test_config_parse_int () ;
 int test_config_parse_log_facility () ;
 int test_config_parse_log_level () ;
 int test_config_parse_mode () ;
 int test_config_parse_nsec () ;
 int test_config_parse_path () ;
 int test_config_parse_sec () ;
 int test_config_parse_si_size () ;
 int test_config_parse_strv () ;
 int test_config_parse_unsigned () ;

int main(int argc, char **argv) {
        unsigned i;

        log_parse_environment();
        log_open();

        test_config_parse_path();
        test_config_parse_log_level();
        test_config_parse_log_facility();
        test_config_parse_iec_size();
        test_config_parse_si_size();
        test_config_parse_int();
        test_config_parse_unsigned();
        test_config_parse_strv();
        test_config_parse_mode();
        test_config_parse_sec();
        test_config_parse_nsec();
        test_config_parse_iec_uint64();

        for (i = 0; i < ELEMENTSOF(config_file); i++)
                test_config_parse(i, config_file[i]);

        return 0;
}
