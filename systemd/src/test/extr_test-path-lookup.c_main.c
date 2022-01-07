
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int LOG_DEBUG ;
 int UNIT_FILE_GLOBAL ;
 int UNIT_FILE_SYSTEM ;
 int UNIT_FILE_USER ;
 int print_generator_binary_paths (int ) ;
 int test_paths (int ) ;
 int test_setup_logging (int ) ;
 int test_user_and_global_paths () ;

int main(int argc, char **argv) {
        test_setup_logging(LOG_DEBUG);

        test_paths(UNIT_FILE_SYSTEM);
        test_paths(UNIT_FILE_USER);
        test_paths(UNIT_FILE_GLOBAL);

        test_user_and_global_paths();

        print_generator_binary_paths(UNIT_FILE_SYSTEM);
        print_generator_binary_paths(UNIT_FILE_USER);

        return EXIT_SUCCESS;
}
