
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int lpszSourceUrlName; } ;
typedef TYPE_1__ INTERNET_CACHE_ENTRY_INFOA ;
typedef int * HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int FALSE ;
 int FindCloseUrlCache (int *) ;
 int * FindFirstUrlCacheEntryA (int *,TYPE_1__*,int*) ;
 int FindNextUrlCacheEntryA (int *,TYPE_1__*,int*) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 TYPE_1__* HeapReAlloc (int ,int ,TYPE_1__*,int) ;
 int SetLastError (int) ;
 int TRUE ;
 int ok (int,char*,...) ;
 int strcmp (int ,int ) ;
 int test_url ;

__attribute__((used)) static void test_find_url_cache_entriesA(void)
{
    BOOL ret;
    HANDLE hEnumHandle;
    BOOL found = FALSE;
    DWORD cbCacheEntryInfo;
    DWORD cbCacheEntryInfoSaved;
    INTERNET_CACHE_ENTRY_INFOA *lpCacheEntryInfo;

    cbCacheEntryInfo = 0;
    SetLastError(0xdeadbeef);
    hEnumHandle = FindFirstUrlCacheEntryA(((void*)0), ((void*)0), &cbCacheEntryInfo);
    ok(!hEnumHandle, "FindFirstUrlCacheEntry should have failed\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER, "FindFirstUrlCacheEntry should have set last error to ERROR_INSUFFICIENT_BUFFER instead of %d\n", GetLastError());
    lpCacheEntryInfo = HeapAlloc(GetProcessHeap(), 0, cbCacheEntryInfo * sizeof(char));
    cbCacheEntryInfoSaved = cbCacheEntryInfo;
    hEnumHandle = FindFirstUrlCacheEntryA(((void*)0), lpCacheEntryInfo, &cbCacheEntryInfo);
    ok(hEnumHandle != ((void*)0), "FindFirstUrlCacheEntry failed with error %d\n", GetLastError());
    while (TRUE)
    {
        if (!strcmp(lpCacheEntryInfo->lpszSourceUrlName, test_url))
        {
            found = TRUE;
            ret = TRUE;
            break;
        }
        SetLastError(0xdeadbeef);
        cbCacheEntryInfo = cbCacheEntryInfoSaved;
        ret = FindNextUrlCacheEntryA(hEnumHandle, lpCacheEntryInfo, &cbCacheEntryInfo);
        if (!ret)
        {
            if (GetLastError() == ERROR_INSUFFICIENT_BUFFER)
            {
                lpCacheEntryInfo = HeapReAlloc(GetProcessHeap(), 0, lpCacheEntryInfo, cbCacheEntryInfo);
                cbCacheEntryInfoSaved = cbCacheEntryInfo;
                ret = FindNextUrlCacheEntryA(hEnumHandle, lpCacheEntryInfo, &cbCacheEntryInfo);
            }
        }
        if (!ret)
            break;
    }
    ok(ret, "FindNextUrlCacheEntry failed with error %d\n", GetLastError());
    ok(found, "Committed url cache entry not found during enumeration\n");

    ret = FindCloseUrlCache(hEnumHandle);
    ok(ret, "FindCloseUrlCache failed with error %d\n", GetLastError());
    HeapFree(GetProcessHeap(), 0, lpCacheEntryInfo);
}
