
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;

int is_dir_fd(int fd) {
        struct stat st;

        if (fstat(fd, &st) < 0)
                return -errno;

        return !!S_ISDIR(st.st_mode);
}
