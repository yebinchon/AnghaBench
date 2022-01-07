
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int EBADE ;
 int EOPNOTSUPP ;
 scalar_t__ USER_NAMESPACE_NO ;
 int arg_uid_range ;
 int arg_uid_shift ;
 int arg_userns_chown ;
 scalar_t__ arg_userns_mode ;
 int assert (char const*) ;
 int log_debug (char*) ;
 int log_error_errno (int,char*) ;
 int path_patch_uid (char const*,int ,int ) ;

__attribute__((used)) static int recursive_chown(const char *directory, uid_t shift, uid_t range) {
        int r;

        assert(directory);

        if (arg_userns_mode == USER_NAMESPACE_NO || !arg_userns_chown)
                return 0;

        r = path_patch_uid(directory, arg_uid_shift, arg_uid_range);
        if (r == -EOPNOTSUPP)
                return log_error_errno(r, "Automatic UID/GID adjusting is only supported for UID/GID ranges starting at multiples of 2^16 with a range of 2^16.");
        if (r == -EBADE)
                return log_error_errno(r, "Upper 16 bits of root directory UID and GID do not match.");
        if (r < 0)
                return log_error_errno(r, "Failed to adjust UID/GID shift of OS tree: %m");
        if (r == 0)
                log_debug("Root directory of image is already owned by the right UID/GID range, skipping recursive chown operation.");
        else
                log_debug("Patched directory tree to match UID/GID range.");

        return r;
}
