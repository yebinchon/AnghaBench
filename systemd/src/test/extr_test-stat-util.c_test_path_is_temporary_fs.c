
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_SYMLINK_FOLLOW ;
 int ENOENT ;
 int assert_se (int) ;
 scalar_t__ path_is_mount_point (char*,int *,int ) ;
 int path_is_temporary_fs (char*) ;

__attribute__((used)) static void test_path_is_temporary_fs(void) {

        if (path_is_mount_point("/run", ((void*)0), AT_SYMLINK_FOLLOW) > 0)
                assert_se(path_is_temporary_fs("/run") > 0);
        assert_se(path_is_temporary_fs("/proc") == 0);
        assert_se(path_is_temporary_fs("/i-dont-exist") == -ENOENT);
}
