
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int PDH_STATUS ;
typedef int DWORD ;


 int ERROR_SUCCESS ;
 int PDH_INVALID_ARGUMENT ;
 int PDH_STRING_NOT_FOUND ;
 int PdhLookupPerfIndexByNameW (int *,char const*,int*) ;
 int ok (int,char*,int) ;
 char const* processor_time ;
 char const* uptime ;

__attribute__((used)) static void test_PdhLookupPerfIndexByNameW( void )
{
    PDH_STATUS ret;
    DWORD index;

    static const WCHAR no_counter[] = {'N','o',' ','C','o','u','n','t','e','r',0};

    ret = PdhLookupPerfIndexByNameW( ((void*)0), ((void*)0), ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfIndexByNameW failed 0x%08x\n", ret);

    ret = PdhLookupPerfIndexByNameW( ((void*)0), ((void*)0), &index );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfIndexByNameW failed 0x%08x\n", ret);

    ret = PdhLookupPerfIndexByNameW( ((void*)0), no_counter, &index );
    ok(ret == PDH_STRING_NOT_FOUND, "PdhLookupPerfIndexByNameW failed 0x%08x\n", ret);

    ret = PdhLookupPerfIndexByNameW( ((void*)0), processor_time, ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfIndexByNameW failed 0x%08x\n", ret);

    ret = PdhLookupPerfIndexByNameW( ((void*)0), processor_time, &index );
    ok(ret == ERROR_SUCCESS, "PdhLookupPerfIndexByNameW failed 0x%08x\n", ret);
    ok(index == 6, "PdhLookupPerfIndexByNameW failed %d\n", index);

    ret = PdhLookupPerfIndexByNameW( ((void*)0), uptime, &index );
    ok(ret == ERROR_SUCCESS, "PdhLookupPerfIndexByNameW failed 0x%08x\n", ret);
    ok(index == 674, "PdhLookupPerfIndexByNameW failed %d\n", index);
}
