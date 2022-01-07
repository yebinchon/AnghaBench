
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int WORD ;
typedef int WCHAR ;
typedef scalar_t__ ULONG ;
typedef scalar_t__ BOOL ;


 int HIWORD (scalar_t__) ;
 int LOWORD (scalar_t__) ;
 scalar_t__ MAKELONG (int ,int ) ;

 scalar_t__ broken (int) ;
 int ok (int,char*,int ,int ,int ,int ,char const*) ;
 scalar_t__ pRtlIsDosDeviceName_U (int *) ;
 int pRtlMultiByteToUnicodeN (int *,int,int *,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlIsDosDeviceName_U(void)
{
    struct test
    {
        const char *path;
        WORD pos;
        WORD len;
        BOOL fails;
    };

    static const struct test tests[] =
    {
        { "\\\\.\\CON", 8, 6, 128 },
        { "\\\\.\\con", 8, 6, 128 },
        { "\\\\.\\CON2", 0, 0 },
        { "", 0, 0 },
        { "\\\\foo\\nul", 0, 0 },
        { "c:\\nul:", 6, 6 },
        { "c:\\nul\\", 0, 0 },
        { "c:\\nul\\foo", 0, 0 },
        { "c:\\nul::", 6, 6, 128 },
        { "c:\\nul::::::", 6, 6, 128 },
        { "c:prn     ", 4, 6 },
        { "c:prn.......", 4, 6 },
        { "c:prn... ...", 4, 6 },
        { "c:NUL  ....  ", 4, 6, 128 },
        { "c: . . .", 0, 0 },
        { "c:", 0, 0 },
        { " . . . :", 0, 0 },
        { ":", 0, 0 },
        { "c:nul. . . :", 4, 6 },
        { "c:nul . . :", 4, 6, 128 },
        { "c:nul0", 0, 0 },
        { "c:prn:aaa", 4, 6, 128 },
        { "c:PRN:.txt", 4, 6 },
        { "c:aux:.txt...", 4, 6 },
        { "c:prn:.txt:", 4, 6 },
        { "c:nul:aaa", 4, 6, 128 },
        { "con:", 0, 6 },
        { "lpt1:", 0, 8 },
        { "c:com5:", 4, 8 },
        { "CoM4:", 0, 8 },
        { "lpt9:", 0, 8 },
        { "c:\\lpt0.txt", 0, 0 },
        { "c:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\nul.txt", 1000, 6 },

        { "c:\\nul", 6, 6 },
        { ((void*)0), 0 }
    };

    const struct test *test;
    WCHAR buffer[2000];
    ULONG ret;

    if (!pRtlIsDosDeviceName_U)
    {
        win_skip("RtlIsDosDeviceName_U is not available\n");
        return;
    }

    for (test = tests; test->path; test++)
    {
        pRtlMultiByteToUnicodeN( buffer, sizeof(buffer), ((void*)0), test->path, strlen(test->path)+1 );
        ret = pRtlIsDosDeviceName_U( buffer );
        ok( ret == MAKELONG( test->len, test->pos ) ||
            (test->fails && broken( ret == 0 )),
            "Wrong result (%d,%d)/(%d,%d) for %s\n",
            HIWORD(ret), LOWORD(ret), test->pos, test->len, test->path );
    }
}
