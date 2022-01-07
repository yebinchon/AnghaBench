
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_parse_etc_hosts () ;
 int test_parse_etc_hosts_system () ;
 int test_parse_file (char*) ;
 int test_setup_logging (int ) ;

int main(int argc, char **argv) {
        test_setup_logging(LOG_DEBUG);

        if (argc == 1) {
                test_parse_etc_hosts_system();
                test_parse_etc_hosts();
        } else
                test_parse_file(argv[1]);

        return 0;
}
