
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero_byte ;
typedef int FILETIME ;
typedef int BYTE ;
typedef int BOOL ;


 int CommitUrlCacheEntryA (char*,int *,int const,int const,int ,int *,int ,char*,int *) ;
 int CreateUrlCacheEntryA (char*,int ,char*,char*,int ) ;
 int DeleteFileA (char*) ;
 int DeleteUrlCacheEntryA (char*) ;
 int GetLastError () ;
 int MAX_PATH ;
 int NORMAL_CACHE_ENTRY ;
 int cache_entry_exists (char*) ;
 int create_and_write_file (char*,int *,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_trailing_slash(void)
{
    char filename[MAX_PATH];
    BYTE zero_byte = 0;
    BOOL ret;

    static const FILETIME filetime_zero;
    static char url_with_slash[] = "http://testing.cache.com/";


    ret = CreateUrlCacheEntryA(url_with_slash, 0, "html", filename, 0);
    ok(ret, "CreateUrlCacheEntry failed with error %d\n", GetLastError());

    create_and_write_file(filename, &zero_byte, sizeof(zero_byte));

    ret = CommitUrlCacheEntryA("Visited: http://testing.cache.com/", ((void*)0), filetime_zero, filetime_zero,
            NORMAL_CACHE_ENTRY, ((void*)0), 0, "html", ((void*)0));
    ok(ret, "CommitUrlCacheEntry failed with error %d\n", GetLastError());

    ok(cache_entry_exists("Visited: http://testing.cache.com/"), "cache entry does not exist\n");
    ok(!cache_entry_exists("Visited: http://testing.cache.com"), "cache entry exists\n");

    ret = DeleteUrlCacheEntryA("Visited: http://testing.cache.com/");
    ok(ret, "DeleteCacheEntryA failed\n");
    DeleteFileA(filename);
}
