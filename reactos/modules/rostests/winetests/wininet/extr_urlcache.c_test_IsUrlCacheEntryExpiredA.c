
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int ULONGLONG ;
struct TYPE_12__ {int LowPart; int HighPart; } ;
struct TYPE_13__ {int QuadPart; TYPE_1__ u; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
struct TYPE_15__ {int dwLowDateTime; int dwHighDateTime; } ;
struct TYPE_11__ {int dwLowDateTime; int dwHighDateTime; } ;
struct TYPE_14__ {TYPE_10__ LastModifiedTime; TYPE_10__ ExpireTime; } ;
typedef TYPE_3__ INTERNET_CACHE_ENTRY_INFOA ;
typedef TYPE_4__ FILETIME ;
typedef int DWORD ;
typedef int BOOL ;


 int CACHE_ENTRY_EXPTIME_FC ;
 int CACHE_ENTRY_MODTIME_FC ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int GetSystemTimeAsFileTime (TYPE_10__*) ;
 int GetUrlCacheEntryInfoA (char const*,TYPE_3__*,int *) ;
 TYPE_3__* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int IsUrlCacheEntryExpiredA (char const*,int,TYPE_4__*) ;
 int SetUrlCacheEntryInfoA (char const*,TYPE_3__*,int ) ;
 int ie10_cache ;
 int ok (int,char*,...) ;
 char const* test_url ;

__attribute__((used)) static void test_IsUrlCacheEntryExpiredA(void)
{
    static const char uncached_url[] =
        "What's the airspeed velocity of an unladen swallow?";
    BOOL ret;
    FILETIME ft;
    DWORD size;
    INTERNET_CACHE_ENTRY_INFOA *info;
    ULARGE_INTEGER exp_time;




    ret = IsUrlCacheEntryExpiredA(((void*)0), 0, ((void*)0));
    ok(ret != ie10_cache, "IsUrlCacheEntryExpiredA returned %x\n", ret);
    ft.dwLowDateTime = 0xdeadbeef;
    ft.dwHighDateTime = 0xbaadf00d;
    ret = IsUrlCacheEntryExpiredA(((void*)0), 0, &ft);
    ok(ret != ie10_cache, "IsUrlCacheEntryExpiredA returned %x\n", ret);
    ok(ft.dwLowDateTime == 0xdeadbeef && ft.dwHighDateTime == 0xbaadf00d,
       "expected time to be unchanged, got (%u,%u)\n",
       ft.dwLowDateTime, ft.dwHighDateTime);
    ret = IsUrlCacheEntryExpiredA(test_url, 0, ((void*)0));
    ok(ret != ie10_cache, "IsUrlCacheEntryExpiredA returned %x\n", ret);





    ft.dwLowDateTime = 0xdeadbeef;
    ft.dwHighDateTime = 0xbaadf00d;
    ret = IsUrlCacheEntryExpiredA(test_url, 0, &ft);
    ok(!ret, "expected FALSE\n");
    ok(!ft.dwLowDateTime && !ft.dwHighDateTime,
       "expected time (0,0), got (%u,%u)\n",
       ft.dwLowDateTime, ft.dwHighDateTime);


    ft.dwLowDateTime = 0xdeadbeef;
    ft.dwHighDateTime = 0xbaadf00d;
    ret = IsUrlCacheEntryExpiredA(test_url, 0xffffffff, &ft);
    ok(!ret, "expected FALSE\n");
    ok(!ft.dwLowDateTime && !ft.dwHighDateTime,
       "expected time (0,0), got (%u,%u)\n",
       ft.dwLowDateTime, ft.dwHighDateTime);


    ret = GetUrlCacheEntryInfoA(test_url, ((void*)0), &size);
    ok(!ret, "GetUrlCacheEntryInfo should have failed\n");
    ok(GetLastError() == ERROR_INSUFFICIENT_BUFFER,
       "expected ERROR_INSUFFICIENT_BUFFER, got %d\n", GetLastError());
    info = HeapAlloc(GetProcessHeap(), 0, size);
    ret = GetUrlCacheEntryInfoA(test_url, info, &size);
    ok(ret, "GetUrlCacheEntryInfo failed: %d\n", GetLastError());
    GetSystemTimeAsFileTime(&info->ExpireTime);
    exp_time.u.LowPart = info->ExpireTime.dwLowDateTime;
    exp_time.u.HighPart = info->ExpireTime.dwHighDateTime;
    exp_time.QuadPart -= 10 * 60 * (ULONGLONG)10000000;
    info->ExpireTime.dwLowDateTime = exp_time.u.LowPart;
    info->ExpireTime.dwHighDateTime = exp_time.u.HighPart;
    ret = SetUrlCacheEntryInfoA(test_url, info, CACHE_ENTRY_EXPTIME_FC);
    ok(ret, "SetUrlCacheEntryInfo failed: %d\n", GetLastError());
    ft.dwLowDateTime = 0xdeadbeef;
    ft.dwHighDateTime = 0xbaadf00d;

    ret = IsUrlCacheEntryExpiredA(test_url, 0, &ft);
    ok(ret, "expected TRUE\n");

    ok(!ft.dwLowDateTime && !ft.dwHighDateTime,
       "expected time (0,0), got (%u,%u)\n",
       ft.dwLowDateTime, ft.dwHighDateTime);

    exp_time.QuadPart += 20 * 60 * (ULONGLONG)10000000;
    info->ExpireTime.dwLowDateTime = exp_time.u.LowPart;
    info->ExpireTime.dwHighDateTime = exp_time.u.HighPart;
    ret = SetUrlCacheEntryInfoA(test_url, info, CACHE_ENTRY_EXPTIME_FC);
    ok(ret, "SetUrlCacheEntryInfo failed: %d\n", GetLastError());
    ft.dwLowDateTime = 0xdeadbeef;
    ft.dwHighDateTime = 0xbaadf00d;

    ret = IsUrlCacheEntryExpiredA(test_url, 0, &ft);
    ok(!ret, "expected FALSE\n");

    ok(!ft.dwLowDateTime && !ft.dwHighDateTime,
       "expected time (0,0), got (%u,%u)\n",
       ft.dwLowDateTime, ft.dwHighDateTime);

    GetSystemTimeAsFileTime(&info->LastModifiedTime);
    ret = SetUrlCacheEntryInfoA(test_url, info, CACHE_ENTRY_MODTIME_FC);
    ok(ret, "SetUrlCacheEntryInfo failed: %d\n", GetLastError());

    ret = IsUrlCacheEntryExpiredA(test_url, 0, &ft);
    ok(!ret, "expected FALSE\n");

    ok(ft.dwLowDateTime == info->LastModifiedTime.dwLowDateTime &&
       ft.dwHighDateTime == info->LastModifiedTime.dwHighDateTime,
       "expected time (%u,%u), got (%u,%u)\n",
       info->LastModifiedTime.dwLowDateTime,
       info->LastModifiedTime.dwHighDateTime,
       ft.dwLowDateTime, ft.dwHighDateTime);
    HeapFree(GetProcessHeap(), 0, info);


    ft.dwLowDateTime = 0xdeadbeef;
    ft.dwHighDateTime = 0xbaadf00d;
    ret = IsUrlCacheEntryExpiredA(uncached_url, 0, &ft);
    ok(ret != ie10_cache, "IsUrlCacheEntryExpiredA returned %x\n", ret);
    ok(!ft.dwLowDateTime && !ft.dwHighDateTime,
       "expected time (0,0), got (%u,%u)\n",
       ft.dwLowDateTime, ft.dwHighDateTime);
}
