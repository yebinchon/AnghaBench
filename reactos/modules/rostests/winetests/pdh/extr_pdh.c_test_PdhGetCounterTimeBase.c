
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PDH_STATUS ;
typedef int PDH_HQUERY ;
typedef int * PDH_HCOUNTER ;
typedef int LONGLONG ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ PDH_INVALID_ARGUMENT ;
 scalar_t__ PDH_INVALID_HANDLE ;
 scalar_t__ PdhAddCounterA (int ,char*,int ,int **) ;
 scalar_t__ PdhCloseQuery (int ) ;
 scalar_t__ PdhGetCounterTimeBase (int *,int *) ;
 scalar_t__ PdhOpenQueryA (int *,int ,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_PdhGetCounterTimeBase( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;
    LONGLONG base;

    ret = PdhOpenQueryA( ((void*)0), 0, &query );
    ok(ret == ERROR_SUCCESS, "PdhOpenQueryA failed 0x%08x\n", ret);

    ret = PdhAddCounterA( query, "\\System\\System Up Time", 0, &counter );
    ok(ret == ERROR_SUCCESS, "PdhAddCounterA failed 0x%08x\n", ret);

    ret = PdhGetCounterTimeBase( ((void*)0), ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhGetCounterTimeBase failed 0x%08x\n", ret);

    ret = PdhGetCounterTimeBase( ((void*)0), &base );
    ok(ret == PDH_INVALID_HANDLE, "PdhGetCounterTimeBase failed 0x%08x\n", ret);

    ret = PdhGetCounterTimeBase( counter, ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhGetCounterTimeBase failed 0x%08x\n", ret);

    ret = PdhGetCounterTimeBase( counter, &base );
    ok(ret == ERROR_SUCCESS, "PdhGetCounterTimeBase failed 0x%08x\n", ret);

    ret = PdhCloseQuery( query );
    ok(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}
