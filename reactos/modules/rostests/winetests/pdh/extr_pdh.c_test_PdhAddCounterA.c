
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
 scalar_t__ PdhAddCounterA (int *,char*,int ,int **) ;
 scalar_t__ PdhCloseQuery (int *) ;
 scalar_t__ PdhCollectQueryData (int *) ;
 scalar_t__ PdhOpenQueryA (int *,int ,int **) ;
 scalar_t__ PdhRemoveCounter (int *) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_PdhAddCounterA( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;

    ret = PdhOpenQueryA( ((void*)0), 0, &query );
    ok(ret == ERROR_SUCCESS, "PdhOpenQueryA failed 0x%08x\n", ret);

    ret = PdhAddCounterA( ((void*)0), "\\System\\System Up Time", 0, ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = PdhAddCounterA( ((void*)0), "\\System\\System Up Time", 0, &counter );
    ok(ret == PDH_INVALID_HANDLE, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = PdhAddCounterA( query, ((void*)0), 0, &counter );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = PdhAddCounterA( query, "\\System\\System Up Time", 0, ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = PdhAddCounterA( query, "\\System\\Nonexistent Counter", 0, &counter );
    ok(ret == PDH_CSTATUS_NO_COUNTER ||
       broken(ret == PDH_INVALID_PATH),
       "PdhAddCounterA failed 0x%08x\n", ret);
    ok(!counter, "PdhAddCounterA failed %p\n", counter);

    ret = PdhAddCounterA( query, "\\System\\System Up Time", 0, &counter );
    ok(ret == ERROR_SUCCESS, "PdhAddCounterA failed 0x%08x\n", ret);

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
