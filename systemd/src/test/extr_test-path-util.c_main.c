
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_empty_or_root () ;
 int test_file_in_same_dir () ;
 int test_filename_is_valid () ;
 int test_find_binary (char*) ;
 int test_fsck_exists () ;
 int test_hidden_or_backup_file () ;
 int test_last_path_component () ;
 int test_make_relative () ;
 int test_path () ;
 int test_path_equal_root () ;
 int test_path_extract_filename () ;
 int test_path_join () ;
 int test_path_startswith () ;
 int test_path_startswith_set () ;
 int test_path_startswith_strv () ;
 int test_prefix_root () ;
 int test_prefixes () ;
 int test_print_paths () ;
 int test_setup_logging (int ) ;
 int test_skip_dev_prefix () ;
 int test_strv_resolve () ;
 int test_systemd_installation_has_version (char*) ;

int main(int argc, char **argv) {
        test_setup_logging(LOG_DEBUG);

        test_print_paths();
        test_path();
        test_path_equal_root();
        test_find_binary(argv[0]);
        test_prefixes();
        test_path_join();
        test_fsck_exists();
        test_make_relative();
        test_strv_resolve();
        test_path_startswith();
        test_prefix_root();
        test_file_in_same_dir();
        test_last_path_component();
        test_path_extract_filename();
        test_filename_is_valid();
        test_hidden_or_backup_file();
        test_skip_dev_prefix();
        test_empty_or_root();
        test_path_startswith_set();
        test_path_startswith_strv();

        test_systemd_installation_has_version(argv[1]);

        return 0;
}
