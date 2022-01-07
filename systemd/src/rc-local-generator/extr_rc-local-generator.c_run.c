
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RC_LOCAL_SCRIPT_PATH_START ;
 int add_symlink (char*,char*) ;
 char const* arg_dest ;
 int assert_se (char const*) ;
 scalar_t__ check_executable (int ) ;
 int log_debug (char*) ;

__attribute__((used)) static int run(const char *dest, const char *dest_early, const char *dest_late) {
        int r = 0, k = 0;

        assert_se(arg_dest = dest);

        if (check_executable(RC_LOCAL_SCRIPT_PATH_START) >= 0) {
                log_debug("Automatically adding rc-local.service.");

                r = add_symlink("rc-local.service", "multi-user.target");
        }

        return r < 0 ? r : k;
}
