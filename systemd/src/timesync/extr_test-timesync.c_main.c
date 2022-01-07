
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_manager_parse_string () ;
 int test_setup_logging (int ) ;

int main(int argc, char **argv) {
        test_setup_logging(LOG_DEBUG);

        test_manager_parse_string();

        return 0;
}
