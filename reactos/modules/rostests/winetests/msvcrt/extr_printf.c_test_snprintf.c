
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (struct snprintf_test const*) ;
 int _snprintf (char*,int const,char const*) ;
 int memcmp (char const*,char*,int const) ;
 int ok (int,char*,char const*,int const,...) ;

__attribute__((used)) static void test_snprintf (void)
{
    struct snprintf_test {
        const char *format;
        int expected;
    };

    const struct snprintf_test tests[] = {{"short", 5},
                                          {"justfit", 7},
                                          {"justfits", 8},
                                          {"muchlonger", -1}};
    char buffer[8];
    const int bufsiz = sizeof buffer;
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(tests); i++) {
        const char *fmt = tests[i].format;
        const int expect = tests[i].expected;
        const int n = _snprintf (buffer, bufsiz, fmt);
        const int valid = n < 0 ? bufsiz : (n == bufsiz ? n : n+1);

        ok (n == expect, "\"%s\": expected %d, returned %d\n",
            fmt, expect, n);
        ok (!memcmp (fmt, buffer, valid),
            "\"%s\": rendered \"%.*s\"\n", fmt, valid, buffer);
    }
}
