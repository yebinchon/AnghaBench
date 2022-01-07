
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 int LOG_DEBUG ;
 scalar_t__ access (char*,int ) ;
 int arg_keep ;
 int log_tests_skipped (char*) ;
 int setup_interleaved ;
 int setup_sequential ;
 int test_sequence_numbers () ;
 int test_setup_logging (int ) ;
 int test_skip (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);


        if (access("/etc/machine-id", F_OK) != 0)
                return log_tests_skipped("/etc/machine-id not found");

        arg_keep = argc > 1;

        test_skip(setup_sequential);
        test_skip(setup_interleaved);

        test_sequence_numbers();

        return 0;
}
