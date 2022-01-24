#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pathbufW ;
typedef  char WCHAR ;
typedef  int ULONG ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int MAX_PATH ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int FUNC5 (char const*,int,char*,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
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
            { "c:/test",                     "c:\\test",         "test"},
            { "c:/test     ",                "c:\\test",         "test"},
            { "c:/test.",                    "c:\\test",         "test"},
            { "c:/test  ....   ..   ",       "c:\\test",         "test"},
            { "c:/test/  ....   ..   ",      "c:\\test\\",       NULL},
            { "c:/test/..",                  "c:\\",             NULL},
            { "c:/test/.. ",                 "c:\\test\\",       NULL},
            { "c:/TEST",                     "c:\\TEST",         "TEST"},
            { "c:/test/file",                "c:\\test\\file",   "file"},
            { "c:/test./file",               "c:\\test\\file",   "file"},
            { "c:/test.. /file",             "c:\\test.. \\file","file"},
            { "c:/test/././file",            "c:\\test\\file",   "file"},
            { "c:/test\\.\\.\\file",         "c:\\test\\file",   "file"},
            { "c:/test/\\.\\.\\file",        "c:\\test\\file",   "file"},
            { "c:/test\\\\.\\.\\file",       "c:\\test\\file",   "file"},
            { "c:/test\\test1\\..\\.\\file", "c:\\test\\file",   "file"},
            { "c:///test\\.\\.\\file//",     "c:\\test\\file\\", NULL,
                                             "c:\\test\\file",   "file"},  /* nt4 */
            { "c:///test\\..\\file\\..\\//", "c:\\",             NULL},
            { "c:/test../file",              "c:\\test.\\file",  "file",
                                             "c:\\test..\\file", "file"},  /* vista */
            { "c:\\test",                    "c:\\test",         "test"},
            { NULL, NULL, NULL}
        };

    const struct test *test;
    WCHAR pathbufW[2*MAX_PATH], rbufferW[MAX_PATH];
    CHAR  rbufferA[MAX_PATH], rfileA[MAX_PATH];
    ULONG ret;
    WCHAR *file_part;
    DWORD reslen;
    UINT len;

    if (!&pRtlGetFullPathName_U)
    {
        FUNC9("RtlGetFullPathName_U is not available\n");
        return;
    }

    file_part = (WCHAR *)0xdeadbeef;
    FUNC2(rbufferW, deadbeefW);
    ret = FUNC5(NULL, MAX_PATH, rbufferW, &file_part);
    FUNC4(!ret, "Expected RtlGetFullPathName_U to return 0, got %u\n", ret);
    FUNC4(!FUNC1(rbufferW, deadbeefW),
       "Expected the output buffer to be untouched, got %s\n", FUNC10(rbufferW));
    FUNC4(file_part == (WCHAR *)0xdeadbeef ||
       file_part == NULL, /* Win7 */
       "Expected file part pointer to be untouched, got %p\n", file_part);

    file_part = (WCHAR *)0xdeadbeef;
    FUNC2(rbufferW, deadbeefW);
    ret = FUNC5(emptyW, MAX_PATH, rbufferW, &file_part);
    FUNC4(!ret, "Expected RtlGetFullPathName_U to return 0, got %u\n", ret);
    FUNC4(!FUNC1(rbufferW, deadbeefW),
       "Expected the output buffer to be untouched, got %s\n", FUNC10(rbufferW));
    FUNC4(file_part == (WCHAR *)0xdeadbeef ||
       file_part == NULL, /* Win7 */
       "Expected file part pointer to be untouched, got %p\n", file_part);

    for (test = tests; test->path; test++)
    {
        len= FUNC8(test->rname) * sizeof(WCHAR);
        FUNC6(pathbufW , sizeof(pathbufW), NULL, test->path, FUNC8(test->path)+1 );
        ret = FUNC5( pathbufW,MAX_PATH, rbufferW, &file_part);
        FUNC4( ret == len || (test->alt_rname && ret == FUNC8(test->alt_rname)*sizeof(WCHAR)),
            "Wrong result %d/%d for \"%s\"\n", ret, len, test->path );
        FUNC4(FUNC7(rbufferA,MAX_PATH,&reslen,rbufferW,(FUNC3(rbufferW) + 1) * sizeof(WCHAR)) == STATUS_SUCCESS,
           "RtlUnicodeToMultiByteN failed\n");
        FUNC4(!FUNC0(rbufferA,test->rname) || (test->alt_rname && !FUNC0(rbufferA,test->alt_rname)),
           "Got \"%s\" expected \"%s\"\n",rbufferA,test->rname);
        if (file_part)
        {
            FUNC4(FUNC7(rfileA,MAX_PATH,&reslen,file_part,(FUNC3(file_part) + 1) * sizeof(WCHAR)) == STATUS_SUCCESS,
               "RtlUnicodeToMultiByteN failed\n");
            FUNC4((test->rfile && !FUNC0(rfileA,test->rfile)) ||
               (test->alt_rfile && !FUNC0(rfileA,test->alt_rfile)),
               "Got \"%s\" expected \"%s\"\n",rfileA,test->rfile);
        }
        else
        {
            FUNC4( !test->rfile, "Got NULL expected \"%s\"\n", test->rfile );
        }
    }
}