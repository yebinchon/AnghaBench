
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ CStatus; } ;
typedef scalar_t__ PDH_STATUS ;
typedef TYPE_1__ PDH_RAW_COUNTER ;
typedef int PDH_HQUERY ;
typedef int * PDH_HCOUNTER ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ PDH_INVALID_ARGUMENT ;
 scalar_t__ PDH_INVALID_HANDLE ;
 scalar_t__ PdhAddCounterA (int ,char*,int ,int **) ;
 scalar_t__ PdhCloseQuery (int ) ;
 scalar_t__ PdhCollectQueryData (int ) ;
 scalar_t__ PdhGetRawCounterValue (int *,int *,TYPE_1__*) ;
 scalar_t__ PdhOpenQueryA (int *,int ,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_PdhGetRawCounterValue( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;
    PDH_RAW_COUNTER value;

    ret = PdhOpenQueryA( ((void*)0), 0, &query );
    ok(ret == ERROR_SUCCESS, "PdhOpenQueryA failed 0x%08x\n", ret);

    ret = PdhAddCounterA( query, "\\System\\System Up Time", 0, &counter );
    ok(ret == ERROR_SUCCESS, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = PdhGetRawCounterValue( ((void*)0), ((void*)0), &value );
    ok(ret == PDH_INVALID_HANDLE, "PdhGetRawCounterValue failed 0x%08x\n", ret);

    ret = PdhGetRawCounterValue( counter, ((void*)0), ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhGetRawCounterValue failed 0x%08x\n", ret);

    ret = PdhGetRawCounterValue( counter, ((void*)0), &value );
    ok(ret == ERROR_SUCCESS, "PdhGetRawCounterValue failed 0x%08x\n", ret);
    ok(value.CStatus == ERROR_SUCCESS, "expected ERROR_SUCCESS got %x\n", value.CStatus);

    ret = PdhCollectQueryData( query );
    ok(ret == ERROR_SUCCESS, "PdhCollectQueryData failed 0x%08x\n", ret);

    ret = PdhGetRawCounterValue( counter, ((void*)0), &value );
    ok(ret == ERROR_SUCCESS, "PdhGetRawCounterValue failed 0x%08x\n", ret);
    ok(value.CStatus == ERROR_SUCCESS, "expected ERROR_SUCCESS got %x\n", value.CStatus);

    ret = PdhCloseQuery( query );
    ok(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}
