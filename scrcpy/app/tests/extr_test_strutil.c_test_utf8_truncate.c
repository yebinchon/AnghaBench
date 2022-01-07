
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int strlen (char const*) ;
 size_t utf8_truncation_index (char const*,int) ;

__attribute__((used)) static void test_utf8_truncate(void) {
    const char *s = "aÉbÔc";
    assert(strlen(s) == 7);

    size_t count;

    count = utf8_truncation_index(s, 1);
    assert(count == 1);

    count = utf8_truncation_index(s, 2);
    assert(count == 1);

    count = utf8_truncation_index(s, 3);
    assert(count == 3);

    count = utf8_truncation_index(s, 4);
    assert(count == 4);

    count = utf8_truncation_index(s, 5);
    assert(count == 4);

    count = utf8_truncation_index(s, 6);
    assert(count == 6);

    count = utf8_truncation_index(s, 7);
    assert(count == 7);

    count = utf8_truncation_index(s, 8);
    assert(count == 7);
}
