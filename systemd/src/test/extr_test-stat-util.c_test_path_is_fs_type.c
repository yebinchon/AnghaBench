
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_SYMLINK_FOLLOW ;
 int BTRFS_SUPER_MAGIC ;
 int ENOENT ;
 int PROC_SUPER_MAGIC ;
 int TMPFS_MAGIC ;
 int assert_se (int) ;
 int path_is_fs_type (char*,int ) ;
 scalar_t__ path_is_mount_point (char*,int *,int ) ;

__attribute__((used)) static void test_path_is_fs_type(void) {

        if (path_is_mount_point("/run", ((void*)0), AT_SYMLINK_FOLLOW) > 0) {
                assert_se(path_is_fs_type("/run", TMPFS_MAGIC) > 0);
                assert_se(path_is_fs_type("/run", BTRFS_SUPER_MAGIC) == 0);
        }
        assert_se(path_is_fs_type("/proc", PROC_SUPER_MAGIC) > 0);
        assert_se(path_is_fs_type("/proc", BTRFS_SUPER_MAGIC) == 0);
        assert_se(path_is_fs_type("/i-dont-exist", BTRFS_SUPER_MAGIC) == -ENOENT);
}
