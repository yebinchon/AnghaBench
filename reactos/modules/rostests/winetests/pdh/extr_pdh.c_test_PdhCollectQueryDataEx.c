
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int largeValue; } ;
typedef scalar_t__ PDH_STATUS ;
typedef int * PDH_HQUERY ;
typedef int PDH_HCOUNTER ;
typedef int PDH_FMT_COUNTERVALUE ;
typedef int * HANDLE ;
typedef int BOOL ;


 int CloseHandle (int *) ;
 int * CreateEventA (int *,int ,int ,char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int INFINITE ;
 int PDH_FMT_LARGE ;
 scalar_t__ PDH_INVALID_HANDLE ;
 scalar_t__ PdhAddCounterA (int *,char*,int ,int *) ;
 scalar_t__ PdhCloseQuery (int *) ;
 scalar_t__ PdhCollectQueryData (int *) ;
 scalar_t__ PdhCollectQueryDataEx (int *,int,int *) ;
 scalar_t__ PdhGetFormattedCounterValue (int ,int ,int *,int *) ;
 scalar_t__ PdhOpenQueryA (int *,int ,int **) ;
 TYPE_1__ U (int ) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int *,int ) ;
 int ok (int,char*,...) ;
 int trace (char*,int ) ;
 int wine_dbgstr_longlong (int ) ;

__attribute__((used)) static void test_PdhCollectQueryDataEx(void)
{
    PDH_STATUS status;
    PDH_HQUERY query;
    PDH_HCOUNTER counter;
    HANDLE event;
    BOOL ret;
    UINT i;

    status = PdhOpenQueryA( ((void*)0), 0, &query );
    ok(status == ERROR_SUCCESS, "PdhOpenQuery failed 0x%08x\n", status);

    event = CreateEventA( ((void*)0), FALSE, FALSE, "winetest" );
    ok(event != ((void*)0), "CreateEvent failed\n");

    status = PdhAddCounterA( query, "\\System\\System Up Time", 0, &counter );
    ok(status == ERROR_SUCCESS, "PdhAddCounterA failed 0x%08x\n", status);

    status = PdhCollectQueryDataEx( ((void*)0), 1, event );
    ok(status == PDH_INVALID_HANDLE, "PdhCollectQueryDataEx failed 0x%08x\n", status);

    status = PdhCollectQueryDataEx( query, 1, ((void*)0) );
    ok(status == ERROR_SUCCESS, "PdhCollectQueryDataEx failed 0x%08x\n", status);

    status = PdhCollectQueryDataEx( query, 1, event );
    ok(status == ERROR_SUCCESS, "PdhCollectQueryDataEx failed 0x%08x\n", status);

    status = PdhCollectQueryData( query );
    ok(status == ERROR_SUCCESS, "PdhCollectQueryData failed 0x%08x\n", status);

    for (i = 0; i < 3; i++)
    {
        if (WaitForSingleObject( event, INFINITE ) == WAIT_OBJECT_0)
        {
            PDH_FMT_COUNTERVALUE value;

            status = PdhGetFormattedCounterValue( counter, PDH_FMT_LARGE, ((void*)0), &value );
            ok(status == ERROR_SUCCESS, "PdhGetFormattedCounterValue failed 0x%08x\n", status);

            trace( "uptime %s\n", wine_dbgstr_longlong(U(value).largeValue) );
        }
    }

    ret = CloseHandle( event );
    ok(ret, "CloseHandle failed\n");

    status = PdhCloseQuery( query );
    ok(status == ERROR_SUCCESS, "PdhCloseQuery failed 0x%08x\n", status);
}
