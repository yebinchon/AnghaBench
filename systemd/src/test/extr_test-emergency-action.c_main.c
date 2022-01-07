
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int LOG_INFO ;
 int test_parse_emergency_action () ;
 int test_setup_logging (int ) ;

int main(int argc, char **argv) {
        test_setup_logging(LOG_INFO);

        test_parse_emergency_action();

        return EXIT_SUCCESS;
}
