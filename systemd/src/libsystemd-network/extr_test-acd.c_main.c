
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int LOG_DEBUG ;
 int log_error (char*,int ) ;
 int program_invocation_short_name ;
 int test_acd (char*,char*) ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        if (argc == 3)
                return test_acd(argv[1], argv[2]);
        else {
                log_error("This program takes two arguments.\n"
                          "\t %s <ifname> <IPv4 address>", program_invocation_short_name);
                return EXIT_FAILURE;
        }
}
