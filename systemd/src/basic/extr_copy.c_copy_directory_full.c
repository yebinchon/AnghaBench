
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_dev; int st_mode; } ;
typedef int copy_progress_path_t ;
typedef int copy_progress_bytes_t ;
typedef int CopyFlags ;


 int AT_FDCWD ;
 int COPY_DEPTH_MAX ;
 int ENOTDIR ;
 int GID_INVALID ;
 int S_ISDIR (int ) ;
 int UID_INVALID ;
 int assert (char const*) ;
 int errno ;
 int fd_copy_directory (int ,char const*,struct stat*,int ,char const*,int ,int ,int ,int ,int ,int *,int ,int ,void*) ;
 scalar_t__ lstat (char const*,struct stat*) ;

int copy_directory_full(
                const char *from,
                const char *to,
                CopyFlags copy_flags,
                copy_progress_path_t progress_path,
                copy_progress_bytes_t progress_bytes,
                void *userdata) {

        struct stat st;

        assert(from);
        assert(to);

        if (lstat(from, &st) < 0)
                return -errno;

        if (!S_ISDIR(st.st_mode))
                return -ENOTDIR;

        return fd_copy_directory(AT_FDCWD, from, &st, AT_FDCWD, to, st.st_dev, COPY_DEPTH_MAX, UID_INVALID, GID_INVALID, copy_flags, ((void*)0), progress_path, progress_bytes, userdata);
}
