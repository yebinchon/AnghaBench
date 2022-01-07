
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 int assert (char const*) ;
 int log_error_errno (int,char*,char const*,...) ;
 int mac_smack_copy (char const*,char const*) ;
 char* strjoina (char*,char const*) ;
 int symlink_idempotent (char const*,char const*,int) ;

__attribute__((used)) static int symlink_controller(const char *target, const char *alias) {
        const char *a;
        int r;

        assert(target);
        assert(alias);

        a = strjoina("/sys/fs/cgroup/", alias);

        r = symlink_idempotent(target, a, 0);
        if (r < 0)
                return log_error_errno(r, "Failed to create symlink %s: %m", a);
        return 0;
}
