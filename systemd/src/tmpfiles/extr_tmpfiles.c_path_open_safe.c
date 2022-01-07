
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHASE_NOFOLLOW ;
 int CHASE_SAFE ;
 int CHASE_WARN ;
 int EINVAL ;
 int ENOLINK ;
 int SYNTHETIC_ERRNO (int ) ;
 int arg_root ;
 int assert (char const*) ;
 int chase_symlinks (char const*,int ,int,int *,int*) ;
 int log_error_errno (int,char*,char const*) ;
 int path_is_normalized (char const*) ;

__attribute__((used)) static int path_open_safe(const char *path) {
        int r, fd;





        assert(path);

        if (!path_is_normalized(path))
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Failed to open invalid path '%s'.",
                                       path);

        r = chase_symlinks(path, arg_root, CHASE_SAFE|CHASE_WARN|CHASE_NOFOLLOW, ((void*)0), &fd);
        if (r < 0 && r != -ENOLINK)
                return log_error_errno(r, "Failed to validate path %s: %m", path);

        return r < 0 ? r : fd;
}
