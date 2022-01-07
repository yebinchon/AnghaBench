
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRV_MAKE (char*,...) ;
 int STRV_MAKE_EMPTY ;
 int test_foreach_string () ;
 int test_invalid_unquote (char*) ;
 int test_specifier_printf () ;
 int test_startswith_set () ;
 int test_str_in_set () ;
 int test_strptr_in_set () ;
 int test_strv_equal () ;
 int test_strv_extend () ;
 int test_strv_extend_n () ;
 int test_strv_extend_strv () ;
 int test_strv_extend_strv_concat () ;
 int test_strv_extendf () ;
 int test_strv_find () ;
 int test_strv_find_prefix () ;
 int test_strv_find_startswith () ;
 int test_strv_fnmatch () ;
 int test_strv_foreach () ;
 int test_strv_foreach_backwards () ;
 int test_strv_foreach_pair () ;
 int test_strv_free_free () ;
 int test_strv_from_stdarg_alloca () ;
 int test_strv_insert () ;
 int test_strv_is_uniq () ;
 int test_strv_join () ;
 int test_strv_join_prefix () ;
 int test_strv_make_nulstr () ;
 int test_strv_overlap () ;
 int test_strv_parse_nulstr () ;
 int test_strv_push () ;
 int test_strv_push_prepend () ;
 int test_strv_reverse () ;
 int test_strv_shell_escape () ;
 int test_strv_skip () ;
 int test_strv_sort () ;
 int test_strv_split () ;
 int test_strv_split_empty () ;
 int test_strv_split_extract () ;
 int test_strv_split_newlines () ;
 int test_strv_split_nulstr () ;
 int test_strv_unquote (char*,int ) ;

int main(int argc, char *argv[]) {
        test_specifier_printf();
        test_str_in_set();
        test_strptr_in_set();
        test_startswith_set();
        test_strv_foreach();
        test_strv_foreach_backwards();
        test_strv_foreach_pair();
        test_strv_find();
        test_strv_find_prefix();
        test_strv_find_startswith();
        test_strv_join();
        test_strv_join_prefix();

        test_strv_unquote("    foo=bar     \"waldo\"    zzz    ", STRV_MAKE("foo=bar", "waldo", "zzz"));
        test_strv_unquote("", STRV_MAKE_EMPTY);
        test_strv_unquote(" ", STRV_MAKE_EMPTY);
        test_strv_unquote("   ", STRV_MAKE_EMPTY);
        test_strv_unquote("   x", STRV_MAKE("x"));
        test_strv_unquote("x   ", STRV_MAKE("x"));
        test_strv_unquote("  x   ", STRV_MAKE("x"));
        test_strv_unquote("  \"x\"   ", STRV_MAKE("x"));
        test_strv_unquote("  'x'   ", STRV_MAKE("x"));
        test_strv_unquote("  'x\"'   ", STRV_MAKE("x\""));
        test_strv_unquote("  \"x'\"   ", STRV_MAKE("x'"));
        test_strv_unquote("a  '--b=c \"d e\"'", STRV_MAKE("a", "--b=c \"d e\""));


        test_strv_unquote("  x\\\\", STRV_MAKE("x\\"));
        test_invalid_unquote("  x\\");

        test_invalid_unquote("a  --b='c \"d e\"''");
        test_invalid_unquote("a  --b='c \"d e\" '\"");
        test_invalid_unquote("a  --b='c \"d e\"garbage");
        test_invalid_unquote("'");
        test_invalid_unquote("\"");
        test_invalid_unquote("'x'y'g");

        test_strv_split();
        test_strv_split_empty();
        test_strv_split_extract();
        test_strv_split_newlines();
        test_strv_split_nulstr();
        test_strv_parse_nulstr();
        test_strv_overlap();
        test_strv_sort();
        test_strv_extend_strv();
        test_strv_extend_strv_concat();
        test_strv_extend();
        test_strv_extendf();
        test_strv_from_stdarg_alloca();
        test_strv_insert();
        test_strv_push_prepend();
        test_strv_push();
        test_strv_equal();
        test_strv_is_uniq();
        test_strv_reverse();
        test_strv_shell_escape();
        test_strv_skip();
        test_strv_extend_n();
        test_strv_make_nulstr();
        test_strv_free_free();

        test_foreach_string();
        test_strv_fnmatch();

        return 0;
}
