
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_utf8_truncate () ;
 int test_xstrjoin_just_fit () ;
 int test_xstrjoin_simple () ;
 int test_xstrjoin_truncated_after_sep () ;
 int test_xstrjoin_truncated_before_sep () ;
 int test_xstrjoin_truncated_in_token () ;
 int test_xstrncpy_just_fit () ;
 int test_xstrncpy_simple () ;
 int test_xstrncpy_truncated () ;

int main(void) {
    test_xstrncpy_simple();
    test_xstrncpy_just_fit();
    test_xstrncpy_truncated();
    test_xstrjoin_simple();
    test_xstrjoin_just_fit();
    test_xstrjoin_truncated_in_token();
    test_xstrjoin_truncated_before_sep();
    test_xstrjoin_truncated_after_sep();
    test_utf8_truncate();
    return 0;
}
