
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ PDH_STATUS ;
typedef scalar_t__ DWORD ;


 scalar_t__ ARRAY_SIZE (int *) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ PDH_INSUFFICIENT_BUFFER ;
 scalar_t__ PDH_INVALID_ARGUMENT ;
 int PDH_MAX_COUNTER_NAME ;
 scalar_t__ PDH_MORE_DATA ;
 scalar_t__ PdhLookupPerfNameByIndexW (int *,int,int *,scalar_t__*) ;
 int ok (int,char*,scalar_t__) ;
 int * processor_time ;
 int * uptime ;

__attribute__((used)) static void test_PdhLookupPerfNameByIndexW( void )
{
    PDH_STATUS ret;
    WCHAR buffer[PDH_MAX_COUNTER_NAME];
    DWORD size;

    ret = PdhLookupPerfNameByIndexW( ((void*)0), 0, ((void*)0), ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhLookupPerfNameByIndexW failed 0x%08x\n", ret);

    size = 0;
    ret = PdhLookupPerfNameByIndexW( ((void*)0), 6, buffer, &size );
    ok(ret == PDH_MORE_DATA || ret == PDH_INSUFFICIENT_BUFFER, "PdhLookupPerfNameByIndexW failed 0x%08x\n", ret);

    size = ARRAY_SIZE(buffer);
    ret = PdhLookupPerfNameByIndexW( ((void*)0), 6, buffer, &size );
    ok(ret == ERROR_SUCCESS, "PdhLookupPerfNameByIndexW failed 0x%08x\n", ret);
    ok(size == ARRAY_SIZE(processor_time), "PdhLookupPerfNameByIndexW failed %d\n", size);

    size = ARRAY_SIZE(buffer);
    ret = PdhLookupPerfNameByIndexW( ((void*)0), 674, ((void*)0), &size );
    ok(ret == PDH_INVALID_ARGUMENT ||
       ret == PDH_MORE_DATA,
       "PdhLookupPerfNameByIndexW failed 0x%08x\n", ret);

    size = ARRAY_SIZE(buffer);
    ret = PdhLookupPerfNameByIndexW( ((void*)0), 674, buffer, &size );
    ok(ret == ERROR_SUCCESS, "PdhLookupPerfNameByIndexW failed 0x%08x\n", ret);
    ok(size == ARRAY_SIZE(uptime), "PdhLookupPerfNameByIndexW failed %d\n", size);
}
