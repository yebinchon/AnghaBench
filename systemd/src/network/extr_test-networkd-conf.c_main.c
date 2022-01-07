
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_open () ;
 int log_parse_environment () ;
 int test_config_parse_address () ;
 int test_config_parse_duid_rawdata () ;
 int test_config_parse_duid_type () ;
 int test_config_parse_hwaddr () ;
 int test_config_parse_match_ifnames () ;
 int test_config_parse_match_strv () ;

int main(int argc, char **argv) {
        log_parse_environment();
        log_open();

        test_config_parse_duid_type();
        test_config_parse_duid_rawdata();
        test_config_parse_hwaddr();
        test_config_parse_address();
        test_config_parse_match_ifnames();
        test_config_parse_match_strv();

        return 0;
}
