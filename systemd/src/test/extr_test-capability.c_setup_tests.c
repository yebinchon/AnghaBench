
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_gid; int pw_uid; } ;


 scalar_t__ EINVAL ;
 int ENOENT ;
 int NOBODY_USER_NAME ;
 int PR_CAP_AMBIENT ;
 int PR_CAP_AMBIENT_CLEAR_ALL ;
 int SYNTHETIC_ERRNO (int ) ;
 scalar_t__ errno ;
 struct passwd* getpwnam (int ) ;
 int log_error_errno (int ,char*) ;
 int prctl (int ,int ,int ,int ,int ) ;
 int test_gid ;
 int test_uid ;

__attribute__((used)) static int setup_tests(bool *run_ambient) {
        struct passwd *nobody;
        int r;

        nobody = getpwnam(NOBODY_USER_NAME);
        if (!nobody)
                return log_error_errno(SYNTHETIC_ERRNO(ENOENT), "Could not find nobody user: %m");

        test_uid = nobody->pw_uid;
        test_gid = nobody->pw_gid;

        *run_ambient = 0;

        r = prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_CLEAR_ALL, 0, 0, 0);






        if (r >= 0 || errno != EINVAL)
                *run_ambient = 1;

        return 0;
}
