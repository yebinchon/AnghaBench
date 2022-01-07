
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pathbufW ;
typedef char WCHAR ;
typedef int ULONG ;
typedef int UINT ;
typedef int DWORD ;
typedef int CHAR ;


 int MAX_PATH ;
 scalar_t__ STATUS_SUCCESS ;
 int lstrcmpA (int *,char const*) ;
 int lstrcmpW (char*,char const*) ;
 int lstrcpyW (char*,char const*) ;
 int lstrlenW (char*) ;
 int ok (int,char*,...) ;
 int pRtlGetFullPathName_U (char const*,int,char*,char**) ;
 int pRtlMultiByteToUnicodeN (char*,int,int *,char const*,int) ;
 scalar_t__ pRtlUnicodeToMultiByteN (int *,int,int *,char*,int) ;
 int strlen (char const*) ;
 int win_skip (char*) ;
 char* wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_RtlGetFullPathName_U(void)
{
    static const WCHAR emptyW[] = {0};
    static const WCHAR deadbeefW[] = {'d','e','a','d','b','e','e','f',0};

    struct test
    {
        const char *path;
        const char *rname;
        const char *rfile;
        const char *alt_rname;
        const char *alt_rfile;
    };

    static const struct test tests[] =
        {
            { "c:/test", "c:\\test", "test"},
            { "c:/test     ", "c:\\test", "test"},
            { "c:/test.", "c:\\test", "test"},
            { "c:/test  ....   ..   ", "c:\\test", "test"},
            { "c:/test/  ....   ..   ", "c:\\test\\", ((void*)0)},
            { "c:/test/..", "c:\\", ((void*)0)},
            { "c:/test/.. ", "c:\\test\\", ((void*)0)},
            { "c:/TEST", "c:\\TEST", "TEST"},
            { "c:/test/file", "c:\\test\\file", "file"},
            { "c:/test./file", "c:\\test\\file", "file"},
            { "c:/test.. /file", "c:\\test.. \\file","file"},
            { "c:/test/././file", "c:\\test\\file", "file"},
            { "c:/test\\.\\.\\file", "c:\\test\\file", "file"},
            { "c:/test/\\.\\.\\file", "c:\\test\\file", "file"},
            { "c:/test\\\\.\\.\\file", "c:\\test\\file", "file"},
            { "c:/test\\test1\\..\\.\\file", "c:\\test\\file", "file"},
            { "c:///test\\.\\.\\file//", "c:\\test\\file\\", ((void*)0),
                                             "c:\\test\\file", "file"},
            { "c:///test\\..\\file\\..\\//", "c:\\", ((void*)0)},
            { "c:/test../file", "c:\\test.\\file", "file",
                                             "c:\\test..\\file", "file"},
            { "c:\\test", "c:\\test", "test"},
            { ((void*)0), ((void*)0), ((void*)0)}
        };

    const struct test *test;
    WCHAR pathbufW[2*MAX_PATH], rbufferW[MAX_PATH];
    CHAR rbufferA[MAX_PATH], rfileA[MAX_PATH];
    ULONG ret;
    WCHAR *file_part;
    DWORD reslen;
    UINT len;

    if (!pRtlGetFullPathName_U)
    {
        win_skip("RtlGetFullPathName_U is not available\n");
        return;
    }

    file_part = (WCHAR *)0xdeadbeef;
    lstrcpyW(rbufferW, deadbeefW);
    ret = pRtlGetFullPathName_U(((void*)0), MAX_PATH, rbufferW, &file_part);
    ok(!ret, "Expected RtlGetFullPathName_U to return 0, got %u\n", ret);
    ok(!lstrcmpW(rbufferW, deadbeefW),
       "Expected the output buffer to be untouched, got %s\n", wine_dbgstr_w(rbufferW));
    ok(file_part == (WCHAR *)0xdeadbeef ||
       file_part == ((void*)0),
       "Expected file part pointer to be untouched, got %p\n", file_part);

    file_part = (WCHAR *)0xdeadbeef;
    lstrcpyW(rbufferW, deadbeefW);
    ret = pRtlGetFullPathName_U(emptyW, MAX_PATH, rbufferW, &file_part);
    ok(!ret, "Expected RtlGetFullPathName_U to return 0, got %u\n", ret);
    ok(!lstrcmpW(rbufferW, deadbeefW),
       "Expected the output buffer to be untouched, got %s\n", wine_dbgstr_w(rbufferW));
    ok(file_part == (WCHAR *)0xdeadbeef ||
       file_part == ((void*)0),
       "Expected file part pointer to be untouched, got %p\n", file_part);

    for (test = tests; test->path; test++)
    {
        len= strlen(test->rname) * sizeof(WCHAR);
        pRtlMultiByteToUnicodeN(pathbufW , sizeof(pathbufW), ((void*)0), test->path, strlen(test->path)+1 );
        ret = pRtlGetFullPathName_U( pathbufW,MAX_PATH, rbufferW, &file_part);
        ok( ret == len || (test->alt_rname && ret == strlen(test->alt_rname)*sizeof(WCHAR)),
            "Wrong result %d/%d for \"%s\"\n", ret, len, test->path );
        ok(pRtlUnicodeToMultiByteN(rbufferA,MAX_PATH,&reslen,rbufferW,(lstrlenW(rbufferW) + 1) * sizeof(WCHAR)) == STATUS_SUCCESS,
           "RtlUnicodeToMultiByteN failed\n");
        ok(!lstrcmpA(rbufferA,test->rname) || (test->alt_rname && !lstrcmpA(rbufferA,test->alt_rname)),
           "Got \"%s\" expected \"%s\"\n",rbufferA,test->rname);
        if (file_part)
        {
            ok(pRtlUnicodeToMultiByteN(rfileA,MAX_PATH,&reslen,file_part,(lstrlenW(file_part) + 1) * sizeof(WCHAR)) == STATUS_SUCCESS,
               "RtlUnicodeToMultiByteN failed\n");
            ok((test->rfile && !lstrcmpA(rfileA,test->rfile)) ||
               (test->alt_rfile && !lstrcmpA(rfileA,test->alt_rfile)),
               "Got \"%s\" expected \"%s\"\n",rfileA,test->rfile);
        }
        else
        {
            ok( !test->rfile, "Got NULL expected \"%s\"\n", test->rfile );
        }
    }
}
