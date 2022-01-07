
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_type; } ;


 int BTRFS_SUPER_MAGIC ;
 int F_TYPE_EQUAL (int ,int ) ;
 int assert (int) ;
 int errno ;
 scalar_t__ fstatfs (int,struct statfs*) ;

int btrfs_is_filesystem(int fd) {
        struct statfs sfs;

        assert(fd >= 0);

        if (fstatfs(fd, &sfs) < 0)
                return -errno;

        return F_TYPE_EQUAL(sfs.f_type, BTRFS_SUPER_MAGIC);
}
