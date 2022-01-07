
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOENT ;
 int ENOKEY ;
 int IN_SET (int,int ,int ) ;
 int SYNTHETIC_ERRNO (int ) ;
 char* getenv (char*) ;
 int log_error_errno (int ,char*,char const*) ;
 int log_oom () ;
 int path_is_absolute (char const*) ;
 int path_is_valid (char const*) ;
 char* strdup (char const*) ;
 int verify_xbootldr (char const*,int,int,int *) ;

int find_xbootldr_and_warn(
                const char *path,
                bool unprivileged_mode,
                char **ret_path,
                sd_id128_t *ret_uuid) {

        int r;



        if (path) {
                r = verify_xbootldr(path, 0, unprivileged_mode, ret_uuid);
                if (r < 0)
                        return r;

                goto found;
        }

        path = getenv("SYSTEMD_XBOOTLDR_PATH");
        if (path) {
                if (!path_is_valid(path) || !path_is_absolute(path))
                        return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                               "$SYSTEMD_XBOOTLDR_PATH does not refer to absolute path, refusing to use it: %s",
                                               path);

                goto found;
        }

        r = verify_xbootldr("/boot", 1, unprivileged_mode, ret_uuid);
        if (r >= 0) {
                path = "/boot";
                goto found;
        }
        if (!IN_SET(r, -ENOENT, -EADDRNOTAVAIL))
                return r;

        return -ENOKEY;

found:
        if (ret_path) {
                char *c;

                c = strdup(path);
                if (!c)
                        return log_oom();

                *ret_path = c;
        }

        return 0;
}
