
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int LOG_INFO ;
 int log_tests_skipped (char*) ;
 int test_bus_new () ;
 int test_bus_new_method_call () ;
 int test_bus_new_signal () ;
 scalar_t__ test_bus_open () ;
 int test_setup_logging (int ) ;

int main(int argc, char **argv) {
        test_setup_logging(LOG_INFO);

        test_bus_new();

        if (test_bus_open() < 0)
                return log_tests_skipped("Failed to connect to bus");

        test_bus_new_method_call();
        test_bus_new_signal();

        return EXIT_SUCCESS;
}
