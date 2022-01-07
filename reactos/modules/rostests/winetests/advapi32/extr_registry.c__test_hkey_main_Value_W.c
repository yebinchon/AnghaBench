
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPCWSTR ;
typedef int DWORD ;
typedef int BYTE ;


 int ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_SUCCESS ;
 int GLE ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int REG_SZ ;
 int RegQueryValueExW (int ,int *,int *,int*,int*,int*) ;
 int SetLastError (int) ;
 int hkey_main ;
 int lok (int,char*,int,...) ;
 scalar_t__ memcmp (int*,int *,int) ;
 int memset (int*,int,int) ;
 int win_skip (char*) ;
 int wine_dbgstr_wn (int *,int) ;

__attribute__((used)) static void _test_hkey_main_Value_W(int line, LPCWSTR name, LPCWSTR string,
                                   DWORD full_byte_len)
{
    DWORD ret, type, cbData;
    BYTE* value;

    type=0xdeadbeef;
    cbData=0xdeadbeef;



    SetLastError(0xdeadbeef);
    ret = RegQueryValueExW(hkey_main, name, ((void*)0), &type, ((void*)0), &cbData);
    GLE = GetLastError();
    lok(ret == ERROR_SUCCESS, "RegQueryValueExW/1 failed: %d, GLE=%d\n", ret, GLE);
    if(GLE == ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("RegQueryValueExW() is not implemented\n");
        return;
    }

    lok(type == REG_SZ, "RegQueryValueExW/1 returned type %d\n", type);
    lok(cbData == full_byte_len,
        "cbData=%d instead of %d\n", cbData, full_byte_len);


    value = HeapAlloc(GetProcessHeap(), 0, cbData+2);
    memset(value, 0xbd, cbData+2);
    type=0xdeadbeef;
    ret = RegQueryValueExW(hkey_main, name, ((void*)0), &type, value, &cbData);
    GLE = GetLastError();
    lok(ret == ERROR_SUCCESS, "RegQueryValueExW/2 failed: %d, GLE=%d\n", ret, GLE);
    if (string)
    {
        lok(memcmp(value, string, cbData) == 0, "RegQueryValueExW failed: %s/%d != %s/%d\n",
           wine_dbgstr_wn((WCHAR*)value, cbData / sizeof(WCHAR)), cbData,
           wine_dbgstr_wn(string, full_byte_len / sizeof(WCHAR)), full_byte_len);
    }

    lok(*(value+cbData) == 0xbd, "RegQueryValueExW/2 overflowed at %u: %02x != bd\n", cbData, *(value+cbData));
    lok(*(value+cbData+1) == 0xbd, "RegQueryValueExW/2 overflowed at %u+1: %02x != bd\n", cbData, *(value+cbData+1));
    HeapFree(GetProcessHeap(), 0, value);
}
