
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 char* arg_test_dir ;
 int test_access_fd () ;
 int test_chase_symlinks () ;
 int test_chmod_and_chown () ;
 int test_dot_or_dot_dot () ;
 int test_fsync_directory_of_file () ;
 int test_get_files_in_directory () ;
 int test_readlink_and_make_absolute () ;
 int test_rename_noreplace () ;
 int test_setup_logging (int ) ;
 int test_touch_file () ;
 int test_unlink_noerrno () ;
 int test_unlinkat_deallocate () ;
 int test_var_tmp () ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_INFO);

        arg_test_dir = argv[1];

        test_chase_symlinks();
        test_unlink_noerrno();
        test_readlink_and_make_absolute();
        test_get_files_in_directory();
        test_var_tmp();
        test_dot_or_dot_dot();
        test_access_fd();
        test_touch_file();
        test_unlinkat_deallocate();
        test_fsync_directory_of_file();
        test_rename_noreplace();
        test_chmod_and_chown();

        return 0;
}
