
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int testset ;
typedef int output ;
typedef int invalid_parameters ;
typedef int UINT ;
typedef char* LPSTR ;
typedef char const* LPCSTR ;
typedef int DWORD ;


 int ERROR_INVALID_NAME ;
 int GetACP () ;
 int GetFullPathNameA (char const*,int,char*,char**) ;
 int GetLastError () ;
 int MAX_PATH ;
 int SetLastError (int) ;
 int lstrcmpA (char*,char const*) ;
 int ok (int,char*,int,...) ;
 int skip (char*,int) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void test_GetFullPathNameA(void)
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
        {((void*)0), 0, ((void*)0), ((void*)0)},
        {((void*)0), MAX_PATH, ((void*)0), ((void*)0)},
        {((void*)0), MAX_PATH, output, ((void*)0)},
        {((void*)0), MAX_PATH, output, &filepart},
        {"", 0, ((void*)0), ((void*)0)},
        {"", MAX_PATH, ((void*)0), ((void*)0)},
        {"", MAX_PATH, output, ((void*)0)},
        {"", MAX_PATH, output, &filepart},
    };

    for (i = 0; i < sizeof(invalid_parameters)/sizeof(invalid_parameters[0]); i++)
    {
        SetLastError(0xdeadbeef);
        strcpy(output, "deadbeef");
        filepart = (char *)0xdeadbeef;
        ret = GetFullPathNameA(invalid_parameters[i].name,
                               invalid_parameters[i].len,
                               invalid_parameters[i].buffer,
                               invalid_parameters[i].lastpart);
        ok(!ret, "[%d] Expected GetFullPathNameA to return 0, got %u\n", i, ret);
        ok(!strcmp(output, "deadbeef"), "[%d] Expected the output buffer to be unchanged, got \"%s\"\n", i, output);
        ok(filepart == (char *)0xdeadbeef, "[%d] Expected output file part pointer to be untouched, got %p\n", i, filepart);
        ok(GetLastError() == 0xdeadbeef ||
           GetLastError() == ERROR_INVALID_NAME,
           "[%d] Expected GetLastError() to return 0xdeadbeef, got %u\n",
           i, GetLastError());
    }

    acp = GetACP();
    if (acp != 932)
        skip("Skipping DBCS(Japanese) GetFullPathNameA test in this codepage (%d)\n", acp);
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
            ret = GetFullPathNameA(testset[i].input, sizeof(output),
                                   output, &filepart);
            ok(ret, "[%d] GetFullPathName error %u\n", i, GetLastError());
            ok(!lstrcmpA(filepart, testset[i].expected),
               "[%d] expected %s got %s\n", i, testset[i].expected, filepart);
        }
    }
}
