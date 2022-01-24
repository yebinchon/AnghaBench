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
typedef  int /*<<< orphan*/  testset ;
typedef  int /*<<< orphan*/  output ;
typedef  int /*<<< orphan*/  invalid_parameters ;
typedef  int UINT ;
typedef  char* LPSTR ;
typedef  char const* LPCSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int ERROR_INVALID_NAME ; 
 int FUNC0 () ; 
 int FUNC1 (char const*,int,char*,char**) ; 
 int FUNC2 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    char output[MAX_PATH], *filepart;
    DWORD ret;
    int i;
    UINT acp;

    const struct
    {
        LPCSTR name;
        DWORD len;
        LPSTR buffer;
        LPSTR *lastpart;
    } invalid_parameters[] =
    {
        {NULL, 0,        NULL,   NULL},
        {NULL, MAX_PATH, NULL,   NULL},
        {NULL, MAX_PATH, output, NULL},
        {NULL, MAX_PATH, output, &filepart},
        {"",   0,        NULL,   NULL},
        {"",   MAX_PATH, NULL,   NULL},
        {"",   MAX_PATH, output, NULL},
        {"",   MAX_PATH, output, &filepart},
    };

    for (i = 0; i < sizeof(invalid_parameters)/sizeof(invalid_parameters[0]); i++)
    {
        FUNC3(0xdeadbeef);
        FUNC8(output, "deadbeef");
        filepart = (char *)0xdeadbeef;
        ret = FUNC1(invalid_parameters[i].name,
                               invalid_parameters[i].len,
                               invalid_parameters[i].buffer,
                               invalid_parameters[i].lastpart);
        FUNC5(!ret, "[%d] Expected GetFullPathNameA to return 0, got %u\n", i, ret);
        FUNC5(!FUNC7(output, "deadbeef"), "[%d] Expected the output buffer to be unchanged, got \"%s\"\n", i, output);
        FUNC5(filepart == (char *)0xdeadbeef, "[%d] Expected output file part pointer to be untouched, got %p\n", i, filepart);
        FUNC5(FUNC2() == 0xdeadbeef ||
           FUNC2() == ERROR_INVALID_NAME, /* Win7 */
           "[%d] Expected GetLastError() to return 0xdeadbeef, got %u\n",
           i, FUNC2());
    }

    acp = FUNC0();
    if (acp != 932)
        FUNC6("Skipping DBCS(Japanese) GetFullPathNameA test in this codepage (%d)\n", acp);
    else {
        const struct dbcs_case {
            const char *input;
            const char *expected;
        } testset[] = {
            { "c:\\a\\\x95\x5c\x97\xa0.txt", "\x95\x5c\x97\xa0.txt" },
            { "c:\\\x83\x8f\x83\x43\x83\x93\\wine.c", "wine.c" },
            { "c:\\demo\\\x97\xa0\x95\x5c", "\x97\xa0\x95\x5c" }
        };
        for (i = 0; i < sizeof(testset)/sizeof(testset[0]); i++) {
            ret = FUNC1(testset[i].input, sizeof(output),
                                   output, &filepart);
            FUNC5(ret, "[%d] GetFullPathName error %u\n", i, FUNC2());
            FUNC5(!FUNC4(filepart, testset[i].expected),
               "[%d] expected %s got %s\n", i, testset[i].expected, filepart);
        }
    }
}