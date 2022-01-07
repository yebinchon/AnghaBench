
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int test_load_env_file_1 () ;
 int test_load_env_file_2 () ;
 int test_load_env_file_3 () ;
 int test_load_env_file_4 () ;
 int test_load_env_file_5 () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_INFO);

        test_load_env_file_1();
        test_load_env_file_2();
        test_load_env_file_3();
        test_load_env_file_4();
        test_load_env_file_5();
}
