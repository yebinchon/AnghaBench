
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_ascii_is_valid () ;
 int test_ascii_is_valid_n () ;
 int test_utf16_to_utf8 () ;
 int test_utf8_console_width () ;
 int test_utf8_encoded_valid_unichar () ;
 int test_utf8_escape_invalid () ;
 int test_utf8_escape_non_printable () ;
 int test_utf8_escape_non_printable_full () ;
 int test_utf8_is_printable () ;
 int test_utf8_is_valid () ;
 int test_utf8_n_codepoints () ;
 int test_utf8_to_utf16 () ;

int main(int argc, char *argv[]) {
        test_utf8_is_valid();
        test_utf8_is_printable();
        test_ascii_is_valid();
        test_ascii_is_valid_n();
        test_utf8_encoded_valid_unichar();
        test_utf8_escape_invalid();
        test_utf8_escape_non_printable();
        test_utf8_escape_non_printable_full();
        test_utf16_to_utf8();
        test_utf8_n_codepoints();
        test_utf8_console_width();
        test_utf8_to_utf16();

        return 0;
}
