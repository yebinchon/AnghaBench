
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_ascii_strcasecmp_n () ;
 int test_ascii_strcasecmp_nn () ;
 int test_ascii_strlower () ;
 int test_cellescape () ;
 int test_delete_chars () ;
 int test_delete_trailing_chars () ;
 int test_delete_trailing_slashes () ;
 int test_endswith () ;
 int test_endswith_no_case () ;
 int test_first_word () ;
 int test_foreach_word () ;
 int test_foreach_word_quoted () ;
 int test_free_and_strndup () ;
 int test_in_charset () ;
 int test_memory_startswith () ;
 int test_memory_startswith_no_case () ;
 int test_setup_logging (int ) ;
 int test_skip_leading_chars () ;
 int test_split_pair () ;
 int test_strcmp_ptr () ;
 int test_streq_ptr () ;
 int test_strextend () ;
 int test_strextend_with_separator () ;
 int test_string_has_cc () ;
 int test_strjoina () ;
 int test_strlen_ptr () ;
 int test_strrep () ;
 int test_strshorten () ;
 int test_strstrip () ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_free_and_strndup();
        test_ascii_strcasecmp_n();
        test_ascii_strcasecmp_nn();
        test_cellescape();
        test_streq_ptr();
        test_strstrip();
        test_strextend();
        test_strextend_with_separator();
        test_strrep();
        test_string_has_cc();
        test_ascii_strlower();
        test_strshorten();
        test_strjoina();
        test_strcmp_ptr();
        test_foreach_word();
        test_foreach_word_quoted();
        test_endswith();
        test_endswith_no_case();
        test_delete_chars();
        test_delete_trailing_chars();
        test_delete_trailing_slashes();
        test_skip_leading_chars();
        test_in_charset();
        test_split_pair();
        test_first_word();
        test_strlen_ptr();
        test_memory_startswith();
        test_memory_startswith_no_case();

        return 0;
}
