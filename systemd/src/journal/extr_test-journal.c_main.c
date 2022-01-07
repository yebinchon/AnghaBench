
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 int LOG_INFO ;
 scalar_t__ access (char*,int ) ;
 int arg_keep ;
 int log_tests_skipped (char*) ;
 int test_empty () ;
 int test_min_compress_size () ;
 int test_non_empty () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        arg_keep = argc > 1;

        test_setup_logging(LOG_INFO);


        if (access("/etc/machine-id", F_OK) != 0)
                return log_tests_skipped("/etc/machine-id not found");

        test_non_empty();
        test_empty();




        return 0;
}
