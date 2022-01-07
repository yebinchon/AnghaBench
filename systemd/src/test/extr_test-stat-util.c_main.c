
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_device_major_minor_valid () ;
 int test_device_path_make_canonical () ;
 int test_fd_is_network_ns () ;
 int test_files_same () ;
 int test_is_symlink () ;
 int test_path_is_fs_type () ;
 int test_path_is_temporary_fs () ;

int main(int argc, char *argv[]) {
        test_files_same();
        test_is_symlink();
        test_path_is_fs_type();
        test_path_is_temporary_fs();
        test_fd_is_network_ns();
        test_device_major_minor_valid();
        test_device_path_make_canonical();

        return 0;
}
