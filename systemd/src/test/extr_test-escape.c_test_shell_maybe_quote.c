
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESCAPE_BACKSLASH ;
 int ESCAPE_POSIX ;
 int test_shell_maybe_quote_one (char*,int ,char*) ;

__attribute__((used)) static void test_shell_maybe_quote(void) {

        test_shell_maybe_quote_one("", ESCAPE_BACKSLASH, "");
        test_shell_maybe_quote_one("", ESCAPE_POSIX, "");
        test_shell_maybe_quote_one("\\", ESCAPE_BACKSLASH, "\"\\\\\"");
        test_shell_maybe_quote_one("\\", ESCAPE_POSIX, "$'\\\\'");
        test_shell_maybe_quote_one("\"", ESCAPE_BACKSLASH, "\"\\\"\"");
        test_shell_maybe_quote_one("\"", ESCAPE_POSIX, "$'\"'");
        test_shell_maybe_quote_one("foobar", ESCAPE_BACKSLASH, "foobar");
        test_shell_maybe_quote_one("foobar", ESCAPE_POSIX, "foobar");
        test_shell_maybe_quote_one("foo bar", ESCAPE_BACKSLASH, "\"foo bar\"");
        test_shell_maybe_quote_one("foo bar", ESCAPE_POSIX, "$'foo bar'");
        test_shell_maybe_quote_one("foo\tbar", ESCAPE_BACKSLASH, "\"foo\tbar\"");
        test_shell_maybe_quote_one("foo\tbar", ESCAPE_POSIX, "$'foo\\tbar'");
        test_shell_maybe_quote_one("foo\nbar", ESCAPE_BACKSLASH, "\"foo\nbar\"");
        test_shell_maybe_quote_one("foo\nbar", ESCAPE_POSIX, "$'foo\\nbar'");
        test_shell_maybe_quote_one("foo \"bar\" waldo", ESCAPE_BACKSLASH, "\"foo \\\"bar\\\" waldo\"");
        test_shell_maybe_quote_one("foo \"bar\" waldo", ESCAPE_POSIX, "$'foo \"bar\" waldo'");
        test_shell_maybe_quote_one("foo$bar", ESCAPE_BACKSLASH, "\"foo\\$bar\"");
        test_shell_maybe_quote_one("foo$bar", ESCAPE_POSIX, "$'foo$bar'");




        test_shell_maybe_quote_one("a\nb\001", ESCAPE_BACKSLASH, "\"a\nb\001\"");
        test_shell_maybe_quote_one("a\nb\001", ESCAPE_POSIX, "$'a\\nb\001'");

        test_shell_maybe_quote_one("foo!bar", ESCAPE_BACKSLASH, "\"foo!bar\"");
        test_shell_maybe_quote_one("foo!bar", ESCAPE_POSIX, "$'foo!bar'");
}
