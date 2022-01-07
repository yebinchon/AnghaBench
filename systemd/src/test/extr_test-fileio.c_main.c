
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_capeff () ;
 int test_executable_is_script () ;
 int test_fgetc () ;
 int test_load_env_file_pairs () ;
 int test_merge_env_file () ;
 int test_merge_env_file_invalid () ;
 int test_parse_env_file () ;
 int test_parse_multiline_env_file () ;
 int test_read_line () ;
 int test_read_line2 () ;
 int test_read_line3 () ;
 int test_read_line4 () ;
 int test_read_nul_string () ;
 int test_search_and_fopen () ;
 int test_search_and_fopen_nulstr () ;
 int test_setup_logging (int ) ;
 int test_status_field () ;
 int test_tempfn () ;
 int test_write_string_file () ;
 int test_write_string_file_no_create () ;
 int test_write_string_file_verify () ;
 int test_write_string_stream () ;
 int test_writing_tmpfile () ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_parse_env_file();
        test_parse_multiline_env_file();
        test_merge_env_file();
        test_merge_env_file_invalid();
        test_executable_is_script();
        test_status_field();
        test_capeff();
        test_write_string_stream();
        test_write_string_file();
        test_write_string_file_no_create();
        test_write_string_file_verify();
        test_load_env_file_pairs();
        test_search_and_fopen();
        test_search_and_fopen_nulstr();
        test_writing_tmpfile();
        test_tempfn();
        test_fgetc();
        test_read_line();
        test_read_line2();
        test_read_line3();
        test_read_line4();
        test_read_nul_string();

        return 0;
}
