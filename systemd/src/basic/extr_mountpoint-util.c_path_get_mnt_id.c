
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_FDCWD ;
 int EACCES ;
 int EINVAL ;
 int ENOSYS ;
 int EOPNOTSUPP ;
 int EOVERFLOW ;
 int EPERM ;
 scalar_t__ IN_SET (int,int ,int ,int ,int ,int ,int ) ;
 int fd_fdinfo_mnt_id (int ,char const*,int ,int*) ;
 int name_to_handle_at_loop (int ,char const*,int *,int*,int ) ;

int path_get_mnt_id(const char *path, int *ret) {
        int r;

        r = name_to_handle_at_loop(AT_FDCWD, path, ((void*)0), ret, 0);
        if (IN_SET(r, -EOPNOTSUPP, -ENOSYS, -EACCES, -EPERM, -EOVERFLOW, -EINVAL))
                return fd_fdinfo_mnt_id(AT_FDCWD, path, 0, ret);

        return r;
}
