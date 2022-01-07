
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int CacheEntryType; } ;
typedef TYPE_1__ INTERNET_CACHE_ENTRY_INFOA ;
typedef int DWORD ;
typedef int BOOL ;


 int CACHE_ENTRY_ATTRIBUTE_FC ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int GetUrlCacheEntryInfoExA (char*,TYPE_1__*,int*,int *,int*,int *,int) ;
 int GetUrlCacheEntryInfoExW (int ,int *,int *,int *,int *,int *,int) ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int SetLastError (int) ;
 int SetUrlCacheEntryInfoA (char*,TYPE_1__*,int ) ;
 scalar_t__ broken (int) ;
 int check_cache_entry_infoA (char*,TYPE_1__*) ;
 int ie10_cache ;
 int ok (int,char*,...) ;
 scalar_t__ old_ie ;
 char* test_url ;
 int test_urlW ;

__attribute__((used)) static void test_GetUrlCacheEntryInfoExA(void)
{
    BOOL ret;
    DWORD cbCacheEntryInfo, cbRedirectUrl;
    INTERNET_CACHE_ENTRY_INFOA *lpCacheEntryInfo;

    SetLastError(0xdeadbeef);
    ret = GetUrlCacheEntryInfoExA(((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
    ok(!ret, "GetUrlCacheEntryInfoEx with NULL URL and NULL args should have failed\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "GetUrlCacheEntryInfoEx with NULL URL and NULL args should have set last error to ERROR_INVALID_PARAMETER instead of %d\n", GetLastError());

    cbCacheEntryInfo = sizeof(INTERNET_CACHE_ENTRY_INFOA);
    SetLastError(0xdeadbeef);
    ret = GetUrlCacheEntryInfoExA("", ((void*)0), &cbCacheEntryInfo, ((void*)0), ((void*)0), ((void*)0), 0);
    ok(!ret, "GetUrlCacheEntryInfoEx with zero-length buffer should fail\n");
    ok(GetLastError() == ERROR_FILE_NOT_FOUND,
       "GetUrlCacheEntryInfoEx should have set last error to ERROR_FILE_NOT_FOUND instead of %d\n", GetLastError());

    ret = GetUrlCacheEntryInfoExA(test_url, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
    ok(ret, "GetUrlCacheEntryInfoEx with NULL args failed with error %d\n", GetLastError());

    cbCacheEntryInfo = 0;
    SetLastError(0xdeadbeef);
    ret = GetUrlCacheEntryInfoExA(test_url, ((void*)0), &cbCacheEntryInfo, ((void*)0), ((void*)0), ((void*)0), 0);
    ok(!ret, "GetUrlCacheEntryInfoEx with zero-length buffer should fail\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER,
       "GetUrlCacheEntryInfoEx should have set last error to ERROR_INSUFFICIENT_BUFFER instead of %d\n", GetLastError());

    lpCacheEntryInfo = HeapAlloc(GetProcessHeap(), 0, cbCacheEntryInfo);

    SetLastError(0xdeadbeef);
    ret = GetUrlCacheEntryInfoExA(test_url, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0x200 );
    ok(ret == ie10_cache, "GetUrlCacheEntryInfoEx returned %x\n", ret);
    if (!ret) ok(GetLastError() == ERROR_FILE_NOT_FOUND,
            "GetUrlCacheEntryInfoEx should have set last error to ERROR_FILE_NOT_FOUND instead of %d\n", GetLastError());


    ret = GetUrlCacheEntryInfoExW(test_urlW, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0x200 );
    ok(ret || broken(old_ie && !ret), "GetUrlCacheEntryInfoExW failed with error %d\n", GetLastError());

    ret = GetUrlCacheEntryInfoExA(test_url, lpCacheEntryInfo, &cbCacheEntryInfo, ((void*)0), ((void*)0), ((void*)0), 0);
    ok(ret, "GetUrlCacheEntryInfoEx failed with error %d\n", GetLastError());

    if (ret) check_cache_entry_infoA("GetUrlCacheEntryInfoEx", lpCacheEntryInfo);

    lpCacheEntryInfo->CacheEntryType |= 0x10000000;
    ret = SetUrlCacheEntryInfoA(test_url, lpCacheEntryInfo, CACHE_ENTRY_ATTRIBUTE_FC);
    ok(ret, "SetUrlCacheEntryInfoA failed with error %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = GetUrlCacheEntryInfoExA(test_url, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0x200 );
    ok(ret, "GetUrlCacheEntryInfoEx failed with error %d\n", GetLastError());

    cbCacheEntryInfo = 100000;
    SetLastError(0xdeadbeef);
    ret = GetUrlCacheEntryInfoExA(test_url, ((void*)0), &cbCacheEntryInfo, ((void*)0), ((void*)0), ((void*)0), 0);
    ok(!ret, "GetUrlCacheEntryInfoEx with zero-length buffer should fail\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "GetUrlCacheEntryInfoEx should have set last error to ERROR_INSUFFICIENT_BUFFER instead of %d\n", GetLastError());

    HeapFree(GetProcessHeap(), 0, lpCacheEntryInfo);


    SetLastError(0xdeadbeef);
    ret = GetUrlCacheEntryInfoExA(test_url, ((void*)0), ((void*)0), ((void*)0), &cbRedirectUrl, ((void*)0), 0);
    ok(!ret, "GetUrlCacheEntryInfoEx should have failed\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    SetLastError(0xdeadbeef);
    ret = GetUrlCacheEntryInfoExA(test_url, ((void*)0), &cbCacheEntryInfo, ((void*)0), &cbRedirectUrl, ((void*)0), 0);
    ok(!ret, "GetUrlCacheEntryInfoEx should have failed\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
}
