
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int TEST_REQ_RUNNING_SYSTEMD (int ) ;
 int test_cg_get_keyed_attribute () ;
 int test_cg_tests () ;
 int test_controller_is_valid () ;
 int test_escape () ;
 int test_fd_is_cgroup_fs () ;
 int test_get_paths () ;
 int test_is_cgroup_fs () ;
 int test_mask_supported () ;
 int test_path_decode_unit () ;
 int test_path_get_owner_uid () ;
 int test_path_get_session () ;
 int test_path_get_slice () ;
 int test_path_get_unit () ;
 int test_path_get_user_slice () ;
 int test_path_get_user_unit () ;
 int test_proc () ;
 int test_setup_logging (int ) ;
 int test_shift_path () ;
 int test_slice_to_path () ;

int main(void) {
        test_setup_logging(LOG_DEBUG);

        test_path_decode_unit();
        test_path_get_unit();
        test_path_get_user_unit();
        test_path_get_session();
        test_path_get_owner_uid();
        test_path_get_slice();
        test_path_get_user_slice();
        TEST_REQ_RUNNING_SYSTEMD(test_get_paths());
        test_proc();
        TEST_REQ_RUNNING_SYSTEMD(test_escape());
        test_controller_is_valid();
        test_slice_to_path();
        test_shift_path();
        TEST_REQ_RUNNING_SYSTEMD(test_mask_supported());
        TEST_REQ_RUNNING_SYSTEMD(test_is_cgroup_fs());
        TEST_REQ_RUNNING_SYSTEMD(test_fd_is_cgroup_fs());
        test_cg_tests();
        test_cg_get_keyed_attribute();

        return 0;
}
