
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int dummy; } ;
typedef int statfs_f_type_t ;


 int errno ;
 scalar_t__ fstatfs (int,struct statfs*) ;
 int is_fs_type (struct statfs*,int ) ;

int fd_is_fs_type(int fd, statfs_f_type_t magic_value) {
        struct statfs s;

        if (fstatfs(fd, &s) < 0)
                return -errno;

        return is_fs_type(&s, magic_value);
}
