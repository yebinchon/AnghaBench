
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EUCLEAN ;
 int SYNTHETIC_ERRNO (int ) ;
 int _LOG_TARGET_MAX ;
 int assert_se (int) ;
 int log_info_errno (int ,char*) ;
 int log_open () ;
 int log_set_target (int) ;
 int test_file () ;
 int test_log_struct () ;
 int test_log_syntax () ;
 int test_long_lines () ;

int main(int argc, char* argv[]) {
        int target;

        test_file();

        for (target = 0; target < _LOG_TARGET_MAX; target++) {
                log_set_target(target);
                log_open();

                test_log_struct();
                test_long_lines();
                test_log_syntax();
        }

        assert_se(log_info_errno(SYNTHETIC_ERRNO(EUCLEAN), "foo") == -EUCLEAN);

        return 0;
}
