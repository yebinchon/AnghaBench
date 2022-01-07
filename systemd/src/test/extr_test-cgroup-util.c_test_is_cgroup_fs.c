
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int dummy; } ;


 int assert_se (int) ;
 int is_cgroup_fs (struct statfs*) ;
 scalar_t__ is_temporary_fs (struct statfs*) ;
 scalar_t__ statfs (char*,struct statfs*) ;

__attribute__((used)) static void test_is_cgroup_fs(void) {
        struct statfs sfs;
        assert_se(statfs("/sys/fs/cgroup", &sfs) == 0);
        if (is_temporary_fs(&sfs))
                assert_se(statfs("/sys/fs/cgroup/systemd", &sfs) == 0);
        assert_se(is_cgroup_fs(&sfs));
}
