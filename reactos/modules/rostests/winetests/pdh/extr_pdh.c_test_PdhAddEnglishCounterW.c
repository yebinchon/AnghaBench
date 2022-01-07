
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PDH_STATUS ;
typedef int * PDH_HQUERY ;
typedef scalar_t__ PDH_HCOUNTER ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ PDH_CSTATUS_NO_COUNTER ;
 scalar_t__ PDH_INVALID_ARGUMENT ;
 scalar_t__ PDH_NO_DATA ;
 scalar_t__ PdhCloseQuery (int *) ;
 scalar_t__ PdhCollectQueryData (int *) ;
 scalar_t__ PdhOpenQueryW (int *,int ,int **) ;
 scalar_t__ PdhRemoveCounter (scalar_t__) ;
 int * nonexistent_counter ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pPdhAddEnglishCounterW (int *,int *,int ,scalar_t__*) ;
 int * system_uptime ;

__attribute__((used)) static void test_PdhAddEnglishCounterW( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;

    ret = PdhOpenQueryW( ((void*)0), 0, &query );
    ok(ret == ERROR_SUCCESS, "PdhOpenQueryW failed 0x%08x\n", ret);

    ret = PdhCollectQueryData( query );
    ok(ret == PDH_NO_DATA, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = pPdhAddEnglishCounterW( ((void*)0), system_uptime, 0, ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddEnglishCounterW failed 0x%08x\n", ret);

    ret = pPdhAddEnglishCounterW( ((void*)0), system_uptime, 0, &counter );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddEnglishCounterW failed 0x%08x\n", ret);

    ret = pPdhAddEnglishCounterW( query, ((void*)0), 0, &counter );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddEnglishCounterW failed 0x%08x\n", ret);

    ret = pPdhAddEnglishCounterW( query, system_uptime, 0, ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddEnglishCounterW failed 0x%08x\n", ret);

    ret = pPdhAddEnglishCounterW( query, nonexistent_counter, 0, &counter );
    ok(ret == PDH_CSTATUS_NO_COUNTER, "PdhAddEnglishCounterW failed 0x%08x\n", ret);
    ok(!counter, "PdhAddEnglishCounterA failed %p\n", counter);

    ret = pPdhAddEnglishCounterW( query, system_uptime, 0, &counter );
    ok(ret == ERROR_SUCCESS, "PdhAddEnglishCounterW failed 0x%08x\n", ret);

    ret = PdhCollectQueryData( query );
    ok(ret == ERROR_SUCCESS, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = PdhRemoveCounter( counter );
    ok(ret == ERROR_SUCCESS, "PdhRemoveCounter failed 0x%08x\n", ret);

    ret = PdhCloseQuery( query );
    ok(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}
