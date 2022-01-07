
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_ino; int st_mode; } ;


 int S_ISDIR (int ) ;
 int assert (int) ;
 int btrfs_is_filesystem (int) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;

int btrfs_is_subvol_fd(int fd) {
        struct stat st;

        assert(fd >= 0);



        if (fstat(fd, &st) < 0)
                return -errno;

        if (!S_ISDIR(st.st_mode) || st.st_ino != 256)
                return 0;

        return btrfs_is_filesystem(fd);
}
