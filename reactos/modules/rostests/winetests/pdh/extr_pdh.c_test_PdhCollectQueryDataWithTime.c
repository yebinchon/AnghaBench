
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PDH_STATUS ;
typedef int * PDH_HQUERY ;
typedef int PDH_HCOUNTER ;
typedef int LONGLONG ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ PDH_INVALID_ARGUMENT ;
 scalar_t__ PDH_INVALID_HANDLE ;
 scalar_t__ PDH_NO_DATA ;
 scalar_t__ PdhAddCounterA (int *,char*,int ,int *) ;
 scalar_t__ PdhCloseQuery (int *) ;
 scalar_t__ PdhCollectQueryData (int *) ;
 scalar_t__ PdhOpenQueryA (int *,int ,int **) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pPdhCollectQueryDataWithTime (int *,int *) ;

__attribute__((used)) static void test_PdhCollectQueryDataWithTime( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;
    LONGLONG time;

    ret = PdhOpenQueryA( ((void*)0), 0, &query );
    ok(ret == ERROR_SUCCESS, "PdhOpenQueryA failed 0x%08x\n", ret);

    ret = PdhCollectQueryData( query );
    ok(ret == PDH_NO_DATA, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = PdhAddCounterA( query, "\\System\\System Up Time", 0, &counter );
    ok(ret == ERROR_SUCCESS, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = pPdhCollectQueryDataWithTime( ((void*)0), ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhCollectQueryDataWithTime failed 0x%08x\n", ret);

    ret = pPdhCollectQueryDataWithTime( query, ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhCollectQueryDataWithTime failed 0x%08x\n", ret);

    ret = pPdhCollectQueryDataWithTime( ((void*)0), &time );
    ok(ret == PDH_INVALID_HANDLE, "PdhCollectQueryDataWithTime failed 0x%08x\n", ret);

    ret = pPdhCollectQueryDataWithTime( query, &time );
    ok(ret == ERROR_SUCCESS, "PdhCollectQueryDataWithTime failed 0x%08x\n", ret);

    ret = PdhCloseQuery( query );
    ok(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}
