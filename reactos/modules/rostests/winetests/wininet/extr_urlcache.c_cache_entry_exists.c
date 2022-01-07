
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetUrlCacheEntryInfoA (char const*,void*,int*) ;
 int ok (int,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static BOOL cache_entry_exists(const char *url)
{
    static char buf[10000];
    DWORD size = sizeof(buf);
    BOOL ret;

    ret = GetUrlCacheEntryInfoA(url, (void*)buf, &size);
    ok(ret || GetLastError() == ERROR_FILE_NOT_FOUND, "GetUrlCacheEntryInfoA returned %x (%u)\n", ret, GetLastError());

    return ret;
}
