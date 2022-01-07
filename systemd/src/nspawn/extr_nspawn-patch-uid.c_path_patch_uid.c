
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int O_CLOEXEC ;
 int O_DIRECTORY ;
 int O_NOATIME ;
 int O_NOFOLLOW ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int errno ;
 int fd_patch_uid_internal (int,int,int ,int ) ;
 int open (char const*,int) ;

int path_patch_uid(const char *path, uid_t shift, uid_t range) {
        int fd;

        fd = open(path, O_RDONLY|O_NONBLOCK|O_DIRECTORY|O_CLOEXEC|O_NOFOLLOW|O_NOATIME);
        if (fd < 0)
                return -errno;

        return fd_patch_uid_internal(fd, 1, shift, range);
}
