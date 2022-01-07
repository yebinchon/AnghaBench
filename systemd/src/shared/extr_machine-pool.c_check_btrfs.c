
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_type; } ;


 int BTRFS_SUPER_MAGIC ;
 int ENOENT ;
 int F_TYPE_EQUAL (int ,int ) ;
 int errno ;
 scalar_t__ statfs (char*,struct statfs*) ;

__attribute__((used)) static int check_btrfs(void) {
        struct statfs sfs;

        if (statfs("/var/lib/machines", &sfs) < 0) {
                if (errno != ENOENT)
                        return -errno;

                if (statfs("/var/lib", &sfs) < 0)
                        return -errno;
        }

        return F_TYPE_EQUAL(sfs.f_type, BTRFS_SUPER_MAGIC);
}
