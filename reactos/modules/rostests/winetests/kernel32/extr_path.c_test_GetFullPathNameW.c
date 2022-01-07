
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int invalid_parameters ;
typedef char WCHAR ;
typedef int * LPWSTR ;
typedef int * LPCWSTR ;
typedef int DWORD ;


 int ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_INVALID_NAME ;
 int GetFullPathNameW (int *,int,int *,int **) ;
 int GetLastError () ;
 int MAX_PATH ;
 int SetLastError (int) ;
 int lstrcmpW (char*,char const*) ;
 int lstrcpyW (char*,char const*) ;
 int ok (int,char*,int,...) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_GetFullPathNameW(void)
{
    static const WCHAR emptyW[] = {0};
    static const WCHAR deadbeefW[] = {'d','e','a','d','b','e','e','f',0};

    WCHAR output[MAX_PATH], *filepart;
    DWORD ret;
    int i;

    const struct
    {
        LPCWSTR name;
        DWORD len;
        LPWSTR buffer;
        LPWSTR *lastpart;
        int win7_expect;
    } invalid_parameters[] =
    {
        {((void*)0), 0, ((void*)0), ((void*)0)},
        {((void*)0), 0, ((void*)0), &filepart, 1},
        {((void*)0), MAX_PATH, ((void*)0), ((void*)0)},
        {((void*)0), MAX_PATH, output, ((void*)0)},
        {((void*)0), MAX_PATH, output, &filepart, 1},
        {emptyW, 0, ((void*)0), ((void*)0)},
        {emptyW, 0, ((void*)0), &filepart, 1},
        {emptyW, MAX_PATH, ((void*)0), ((void*)0)},
        {emptyW, MAX_PATH, output, ((void*)0)},
        {emptyW, MAX_PATH, output, &filepart, 1},
    };

    SetLastError(0xdeadbeef);
    ret = GetFullPathNameW(((void*)0), 0, ((void*)0), ((void*)0));
    if (!ret && GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("GetFullPathNameW is not available\n");
        return;
    }

    for (i = 0; i < sizeof(invalid_parameters)/sizeof(invalid_parameters[0]); i++)
    {
        SetLastError(0xdeadbeef);
        lstrcpyW(output, deadbeefW);
        filepart = (WCHAR *)0xdeadbeef;
        ret = GetFullPathNameW(invalid_parameters[i].name,
                               invalid_parameters[i].len,
                               invalid_parameters[i].buffer,
                               invalid_parameters[i].lastpart);
        ok(!ret, "[%d] Expected GetFullPathNameW to return 0, got %u\n", i, ret);
        ok(!lstrcmpW(output, deadbeefW), "[%d] Expected the output buffer to be unchanged, got %s\n", i, wine_dbgstr_w(output));
        ok(filepart == (WCHAR *)0xdeadbeef ||
           (invalid_parameters[i].win7_expect && filepart == ((void*)0)),
           "[%d] Expected output file part pointer to be untouched, got %p\n", i, filepart);
        ok(GetLastError() == 0xdeadbeef ||
           GetLastError() == ERROR_INVALID_NAME,
           "[%d] Expected GetLastError() to return 0xdeadbeef, got %u\n",
           i, GetLastError());
    }
}
