
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp_var ;
typedef int tmp_dirW ;
typedef int buf ;
typedef float WCHAR ;
typedef int DWORD ;


 int CP_ACP ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 int GetEnvironmentVariableA (char*,char*,int) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int GetTempPathW (int,float*) ;
 int GetVersion () ;
 float* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,float*) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,float*,int) ;
 scalar_t__ broken (int) ;
 scalar_t__ lstrcmpiW (float*,float*) ;
 int lstrcpyW (float*,float const*) ;
 int lstrlenW (float*) ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int strlen (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetTempPathW(char* tmp_dir)
{
    DWORD len, slen, len_with_null;
    WCHAR buf[MAX_PATH], *long_buf;
    WCHAR tmp_dirW[MAX_PATH];
    static const WCHAR fooW[] = {'f','o','o',0};

    MultiByteToWideChar(CP_ACP,0,tmp_dir,-1,tmp_dirW,sizeof(tmp_dirW)/sizeof(*tmp_dirW));
    len_with_null = lstrlenW(tmp_dirW) + 1;
    lstrcpyW(buf, fooW);
    len = GetTempPathW(MAX_PATH, buf);
    if (len == 0 && GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("GetTempPathW is not available\n");
        return;
    }
    ok(lstrcmpiW(buf, tmp_dirW) == 0, "GetTempPathW returned an incorrect temporary path\n");
    ok(len == lstrlenW(buf), "returned length should be equal to the length of string\n");

    lstrcpyW(buf, fooW);
    len = GetTempPathW(1, buf);
    ok(buf[0] == 0, "unicode version should truncate the buffer to zero size\n");
    ok(len >= len_with_null, "Expected >= %u, got %u\n", len_with_null, len);

    len = GetTempPathW(0, ((void*)0));
    ok(len >= len_with_null, "Expected >= %u, got %u\n", len_with_null, len);

    lstrcpyW(buf, fooW);
    len = GetTempPathW(len, buf);
    ok(lstrcmpiW(buf, tmp_dirW) == 0, "GetTempPathW returned an incorrect temporary path\n");
    ok(len == lstrlenW(buf), "returned length should be equal to the length of string\n");

    for(len = 0; len < sizeof(buf) / sizeof(buf[0]); len++)
        buf[len] = 'a';
    len = GetTempPathW(len, buf);
    ok(lstrcmpiW(buf, tmp_dirW) == 0, "GetTempPathW returned an incorrect temporary path\n");
    ok(len == lstrlenW(buf), "returned length should be equal to the length of string\n");

    slen = len + 1;
    for(len++; len < sizeof(buf) / sizeof(buf[0]); len++)
        ok(buf[len] == '\0', "expected NULL at [%d], got 0x%x\n", len, buf[len]);


    for(len = 0; len < sizeof(buf) / sizeof(buf[0]); len++)
        buf[len] = 'a';
    len = GetTempPathW(slen / 2, buf);
    ok(len == slen || broken(len == slen + 1) ,
       "expected %d, got %d\n", slen, len);

    {





        char tmp_var[64];
        DWORD version = GetVersion();
        GetEnvironmentVariableA("TMP", tmp_var, sizeof(tmp_var));
        if (strlen(tmp_var) == 2 && version >= 0x00060002)
            return;
    }

    for(len = 0; len < slen / 2; len++)
        ok(buf[len] == '\0', "expected NULL at [%d], got 0x%x\n", len, buf[len]);
    for(; len < sizeof(buf) / sizeof(buf[0]); len++)
        ok(buf[len] == 'a', "expected 'a' at [%d], got 0x%x\n", len, buf[len]);



    slen = 65534;
    long_buf = HeapAlloc(GetProcessHeap(), 0, slen * sizeof(WCHAR));
    if (!long_buf)
    {
        skip("Could not allocate memory for the test\n");
        return;
    }
    for(len = 0; len < slen; len++)
        long_buf[len] = 0xCC;
    len = GetTempPathW(slen, long_buf);
    ok(lstrcmpiW(long_buf, tmp_dirW) == 0, "GetTempPathW returned an incorrect temporary path\n");
    ok(len == lstrlenW(long_buf), "returned length should be equal to the length of string\n");





    for(; len < 32767; len++)
        ok(long_buf[len] == '\0', "expected NULL at [%d], got 0x%x\n", len, long_buf[len]);


    for(len++; len < slen; len++)
        ok(long_buf[len] == 0xcc, "expected 0xcc at [%d], got 0x%x\n", len, long_buf[len]);

    HeapFree(GetProcessHeap(), 0, long_buf);
}
