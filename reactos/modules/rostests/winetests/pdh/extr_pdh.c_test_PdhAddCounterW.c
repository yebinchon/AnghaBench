
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PDH_STATUS ;
typedef int * PDH_HQUERY ;
typedef int * PDH_HCOUNTER ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ PDH_CSTATUS_NO_COUNTER ;
 scalar_t__ PDH_INVALID_ARGUMENT ;
 scalar_t__ PDH_INVALID_HANDLE ;
 scalar_t__ PDH_INVALID_PATH ;
 scalar_t__ PdhAddCounterW (int *,int *,int ,int **) ;
 scalar_t__ PdhCloseQuery (int *) ;
 scalar_t__ PdhCollectQueryData (int *) ;
 scalar_t__ PdhOpenQueryW (int *,int ,int **) ;
 scalar_t__ PdhRemoveCounter (int *) ;
 scalar_t__ broken (int) ;
 int * nonexistent_counter ;
 int ok (int,char*,scalar_t__) ;
 int * percentage_processor_time ;

__attribute__((used)) static void test_PdhAddCounterW( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;

    ret = PdhOpenQueryW( ((void*)0), 0, &query );
    ok(ret == ERROR_SUCCESS, "PdhOpenQueryW failed 0x%08x\n", ret);

    ret = PdhAddCounterW( ((void*)0), percentage_processor_time, 0, ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddCounterW failed 0x%08x\n", ret);

    ret = PdhAddCounterW( ((void*)0), percentage_processor_time, 0, &counter );
    ok(ret == PDH_INVALID_HANDLE, "PdhAddCounterW failed 0x%08x\n", ret);

    ret = PdhAddCounterW( query, ((void*)0), 0, &counter );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddCounterW failed 0x%08x\n", ret);

    ret = PdhAddCounterW( query, percentage_processor_time, 0, ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddCounterW failed 0x%08x\n", ret);

    ret = PdhAddCounterW( query, nonexistent_counter, 0, &counter );
    ok(ret == PDH_CSTATUS_NO_COUNTER ||
       broken(ret == PDH_INVALID_PATH),
       "PdhAddCounterW failed 0x%08x\n", ret);
    ok(!counter, "PdhAddCounterW failed %p\n", counter);

    ret = PdhAddCounterW( query, percentage_processor_time, 0, &counter );
    ok(ret == ERROR_SUCCESS, "PdhAddCounterW failed 0x%08x\n", ret);

    ret = PdhCollectQueryData( ((void*)0) );
    ok(ret == PDH_INVALID_HANDLE, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = PdhCollectQueryData( counter );
    ok(ret == PDH_INVALID_HANDLE, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = PdhCollectQueryData( query );
    ok(ret == ERROR_SUCCESS, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = PdhRemoveCounter( ((void*)0) );
    ok(ret == PDH_INVALID_HANDLE, "PdhRemoveCounter failed 0x%08x\n", ret);

    ret = PdhRemoveCounter( counter );
    ok(ret == ERROR_SUCCESS, "PdhRemoveCounter failed 0x%08x\n", ret);

    ret = PdhCloseQuery( query );
    ok(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}
