
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int info ;
struct TYPE_3__ {int lScale; } ;
typedef int PDH_STATUS ;
typedef int PDH_HQUERY ;
typedef int * PDH_HCOUNTER ;
typedef TYPE_1__ PDH_COUNTER_INFO_W ;
typedef int DWORD ;


 int ERROR_SUCCESS ;
 int PDH_INVALID_ARGUMENT ;
 int PDH_INVALID_HANDLE ;
 int PDH_MORE_DATA ;
 int PdhAddCounterW (int ,int ,int ,int **) ;
 int PdhCloseQuery (int ) ;
 int PdhGetCounterInfoW (int *,int ,int*,TYPE_1__*) ;
 int PdhOpenQueryW (int *,int ,int *) ;
 int PdhSetCounterScaleFactor (int *,int) ;
 int ok (int,char*,int) ;
 int percentage_processor_time ;

__attribute__((used)) static void test_PdhGetCounterInfoW( void )
{
    PDH_STATUS ret;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;
    PDH_COUNTER_INFO_W info;
    DWORD size;

    ret = PdhOpenQueryW( ((void*)0), 0, &query );
    ok(ret == ERROR_SUCCESS, "PdhOpenQueryW failed 0x%08x\n", ret);

    ret = PdhAddCounterW( query, percentage_processor_time, 0, &counter );
    ok(ret == ERROR_SUCCESS, "PdhAddCounterW failed 0x%08x\n", ret);

    ret = PdhGetCounterInfoW( ((void*)0), 0, ((void*)0), ((void*)0) );
    ok(ret == PDH_INVALID_HANDLE || ret == PDH_INVALID_ARGUMENT, "PdhGetCounterInfoW failed 0x%08x\n", ret);

    ret = PdhGetCounterInfoW( counter, 0, ((void*)0), ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhGetCounterInfoW failed 0x%08x\n", ret);

    ret = PdhGetCounterInfoW( counter, 0, ((void*)0), &info );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhGetCounterInfoW failed 0x%08x\n", ret);

    size = sizeof(info) - 1;
    ret = PdhGetCounterInfoW( counter, 0, &size, ((void*)0) );
    ok(ret == PDH_MORE_DATA || ret == PDH_INVALID_ARGUMENT, "PdhGetCounterInfoW failed 0x%08x\n", ret);

    size = sizeof(info);
    ret = PdhGetCounterInfoW( counter, 0, &size, &info );
    ok(ret == ERROR_SUCCESS, "PdhGetCounterInfoW failed 0x%08x\n", ret);
    ok(size == sizeof(info), "PdhGetCounterInfoW failed %d\n", size);

    ret = PdhGetCounterInfoW( counter, 0, &size, &info );
    ok(ret == ERROR_SUCCESS, "PdhGetCounterInfoW failed 0x%08x\n", ret);
    ok(info.lScale == 0, "lScale %d\n", info.lScale);

    ret = PdhSetCounterScaleFactor( counter, 0 );
    ok(ret == ERROR_SUCCESS, "PdhSetCounterScaleFactor failed 0x%08x\n", ret);

    ret = PdhGetCounterInfoW( counter, 0, &size, &info );
    ok(ret == ERROR_SUCCESS, "PdhGetCounterInfoW failed 0x%08x\n", ret);
    ok(info.lScale == 0, "lScale %d\n", info.lScale);

    ret = PdhSetCounterScaleFactor( counter, -5 );
    ok(ret == ERROR_SUCCESS, "PdhSetCounterScaleFactor failed 0x%08x\n", ret);

    ret = PdhGetCounterInfoW( counter, 0, &size, &info );
    ok(ret == ERROR_SUCCESS, "PdhGetCounterInfoW failed 0x%08x\n", ret);
    ok(info.lScale == -5, "lScale %d\n", info.lScale);

    ret = PdhCloseQuery( query );
    ok(ret == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", ret);
}
