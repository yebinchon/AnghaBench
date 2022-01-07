
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct stat {int st_mode; int st_dev; } ;
typedef int gid_t ;
typedef int copy_progress_path_t ;
typedef int copy_progress_bytes_t ;
typedef int CopyFlags ;


 int AT_SYMLINK_NOFOLLOW ;
 int COPY_DEPTH_MAX ;
 int EOPNOTSUPP ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int assert (char const*) ;
 int errno ;
 int fd_copy_directory (int,char const*,struct stat*,int,char const*,int ,int ,int ,int ,int ,int *,int ,int ,void*) ;
 int fd_copy_fifo (int,char const*,struct stat*,int,char const*,int ,int ,int ) ;
 int fd_copy_node (int,char const*,struct stat*,int,char const*,int ,int ,int ) ;
 int fd_copy_regular (int,char const*,struct stat*,int,char const*,int ,int ,int ,int ,void*) ;
 int fd_copy_symlink (int,char const*,struct stat*,int,char const*,int ,int ,int ) ;
 scalar_t__ fstatat (int,char const*,struct stat*,int ) ;

int copy_tree_at_full(
                int fdf,
                const char *from,
                int fdt,
                const char *to,
                uid_t override_uid,
                gid_t override_gid,
                CopyFlags copy_flags,
                copy_progress_path_t progress_path,
                copy_progress_bytes_t progress_bytes,
                void *userdata) {

        struct stat st;

        assert(from);
        assert(to);

        if (fstatat(fdf, from, &st, AT_SYMLINK_NOFOLLOW) < 0)
                return -errno;

        if (S_ISREG(st.st_mode))
                return fd_copy_regular(fdf, from, &st, fdt, to, override_uid, override_gid, copy_flags, progress_bytes, userdata);
        else if (S_ISDIR(st.st_mode))
                return fd_copy_directory(fdf, from, &st, fdt, to, st.st_dev, COPY_DEPTH_MAX, override_uid, override_gid, copy_flags, ((void*)0), progress_path, progress_bytes, userdata);
        else if (S_ISLNK(st.st_mode))
                return fd_copy_symlink(fdf, from, &st, fdt, to, override_uid, override_gid, copy_flags);
        else if (S_ISFIFO(st.st_mode))
                return fd_copy_fifo(fdf, from, &st, fdt, to, override_uid, override_gid, copy_flags);
        else if (S_ISBLK(st.st_mode) || S_ISCHR(st.st_mode) || S_ISSOCK(st.st_mode))
                return fd_copy_node(fdf, from, &st, fdt, to, override_uid, override_gid, copy_flags);
        else
                return -EOPNOTSUPP;
}
