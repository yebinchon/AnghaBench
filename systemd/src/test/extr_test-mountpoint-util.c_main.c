
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int LOG_DEBUG ;
 int MS_PRIVATE ;
 int MS_SHARED ;
 int MS_SLAVE ;
 int test_mnt_id () ;
 int test_mount_propagation_flags (char*,int ,int ) ;
 int test_path_is_mount_point () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_mount_propagation_flags("shared", 0, MS_SHARED);
        test_mount_propagation_flags("slave", 0, MS_SLAVE);
        test_mount_propagation_flags("private", 0, MS_PRIVATE);
        test_mount_propagation_flags(((void*)0), 0, 0);
        test_mount_propagation_flags("", 0, 0);
        test_mount_propagation_flags("xxxx", -EINVAL, 0);
        test_mount_propagation_flags(" ", -EINVAL, 0);

        test_mnt_id();
        test_path_is_mount_point();

        return 0;
}
