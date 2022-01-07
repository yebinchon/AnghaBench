
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PDH_STATUS ;
typedef int DWORD ;


 int ERROR_SUCCESS ;
 int PDH_INVALID_ARGUMENT ;
 int PDH_STRING_NOT_FOUND ;
 int PdhLookupPerfIndexByNameA (int *,char*,int*) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_PdhLookupPerfIndexByNameA( void )
{
    PDH_STATUS ret;
    DWORD index;

    ret = PdhLookupPerfIndexByNameA( ((void*)0), ((void*)0), ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfIndexByNameA failed 0x%08x\n", ret);

    ret = PdhLookupPerfIndexByNameA( ((void*)0), ((void*)0), &index );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfIndexByNameA failed 0x%08x\n", ret);

    ret = PdhLookupPerfIndexByNameA( ((void*)0), "No Counter", &index );
    ok(ret == PDH_STRING_NOT_FOUND, "PdhLookupPerfIndexByNameA failed 0x%08x\n", ret);

    ret = PdhLookupPerfIndexByNameA( ((void*)0), "% Processor Time", ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfIndexByNameA failed 0x%08x\n", ret);

    ret = PdhLookupPerfIndexByNameA( ((void*)0), "% Processor Time", &index );
    ok(ret == ERROR_SUCCESS, "PdhLookupPerfIndexByNameA failed 0x%08x\n", ret);
    ok(index == 6, "PdhLookupPerfIndexByNameA failed %d\n", index);

    ret = PdhLookupPerfIndexByNameA( ((void*)0), "System Up Time", &index );
    ok(ret == ERROR_SUCCESS, "PdhLookupPerfIndexByNameA failed 0x%08x\n", ret);
    ok(index == 674, "PdhLookupPerfIndexByNameA failed %d\n", index);
}
