
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
 scalar_t__ PdhOpenQueryA (int *,int ,int **) ;
 scalar_t__ PdhRemoveCounter (scalar_t__) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pPdhAddEnglishCounterA (int *,char*,int ,scalar_t__*) ;

__attribute__((used)) static void test_PdhAddEnglishCounterA( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;

    ret = PdhOpenQueryA( ((void*)0), 0, &query );
    ok(ret == ERROR_SUCCESS, "PdhOpenQueryA failed 0x%08x\n", ret);

    ret = PdhCollectQueryData( query );
    ok(ret == PDH_NO_DATA, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = pPdhAddEnglishCounterA( ((void*)0), "\\System\\System Up Time", 0, ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddEnglishCounterA failed 0x%08x\n", ret);

    ret = pPdhAddEnglishCounterA( ((void*)0), "\\System\\System Up Time", 0, &counter );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddEnglishCounterA failed 0x%08x\n", ret);

    ret = pPdhAddEnglishCounterA( query, ((void*)0), 0, &counter );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddEnglishCounterA failed 0x%08x\n", ret);

    ret = pPdhAddEnglishCounterA( query, "\\System\\System Up Time", 0, ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhAddEnglishCounterA failed 0x%08x\n", ret);

    ret = pPdhAddEnglishCounterA( query, "\\System\\System Down Time", 0, &counter );
    ok(ret == PDH_CSTATUS_NO_COUNTER, "PdhAddEnglishCounterA failed 0x%08x\n", ret);
    ok(!counter, "PdhAddEnglishCounterA failed %p\n", counter);

    ret = pPdhAddEnglishCounterA( query, "\\System\\System Up Time", 0, &counter );
    ok(ret == ERROR_SUCCESS, "PdhAddEnglishCounterA failed 0x%08x\n", ret);

    ret = PdhCollectQueryData( query );
    ok(ret == ERROR_SUCCESS, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = PdhRemoveCounter( counter );
    ok(ret == ERROR_SUCCESS, "PdhRemoveCounter failed 0x%08x\n", ret);

    ret = PdhCloseQuery( query );
    ok(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}
