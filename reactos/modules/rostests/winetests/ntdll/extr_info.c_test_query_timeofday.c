
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sti ;
typedef int ULONG ;
typedef int NTSTATUS ;
typedef int LARGE_INTEGER ;
typedef int DWORD ;


 int STATUS_INFO_LENGTH_MISMATCH ;
 int STATUS_SUCCESS ;
 int SystemTimeOfDayInformation ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int pNtQuerySystemInformation (int ,struct _SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE*,int,int*) ;
 int trace (char*,...) ;

__attribute__((used)) static void test_query_timeofday(void)
{
    NTSTATUS status;
    ULONG ReturnLength;


    typedef struct _SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE {
        LARGE_INTEGER liKeBootTime;
        LARGE_INTEGER liKeSystemTime;
        LARGE_INTEGER liExpTimeZoneBias;
        ULONG uCurrentTimeZoneId;
        DWORD dwUnknown1[5];
    } SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE;

    SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE sti;
    status = pNtQuerySystemInformation(SystemTimeOfDayInformation, &sti, sizeof(sti), &ReturnLength);

    if (status == STATUS_INFO_LENGTH_MISMATCH)
    {
        trace("Windows version is NT, we have to cater for differences with W2K/WinXP\n");

        status = pNtQuerySystemInformation(SystemTimeOfDayInformation, &sti, 0, &ReturnLength);
        ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);
        ok( 0 == ReturnLength, "ReturnLength should be 0, it is (%d)\n", ReturnLength);

        sti.uCurrentTimeZoneId = 0xdeadbeef;
        status = pNtQuerySystemInformation(SystemTimeOfDayInformation, &sti, 28, &ReturnLength);
        ok(status == STATUS_SUCCESS || broken(status == STATUS_INFO_LENGTH_MISMATCH ), "Expected STATUS_SUCCESS, got %08x\n", status);
        ok( 0xdeadbeef == sti.uCurrentTimeZoneId, "This part of the buffer should not have been filled\n");

        status = pNtQuerySystemInformation(SystemTimeOfDayInformation, &sti, 32, &ReturnLength);
        ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
        ok( 32 == ReturnLength, "ReturnLength should be 0, it is (%d)\n", ReturnLength);
    }
    else
    {
        status = pNtQuerySystemInformation(SystemTimeOfDayInformation, &sti, 0, &ReturnLength);
        ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
        ok( 0 == ReturnLength, "ReturnLength should be 0, it is (%d)\n", ReturnLength);

        sti.uCurrentTimeZoneId = 0xdeadbeef;
        status = pNtQuerySystemInformation(SystemTimeOfDayInformation, &sti, 24, &ReturnLength);
        ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
        ok( 24 == ReturnLength, "ReturnLength should be 24, it is (%d)\n", ReturnLength);
        ok( 0xdeadbeef == sti.uCurrentTimeZoneId, "This part of the buffer should not have been filled\n");

        sti.uCurrentTimeZoneId = 0xdeadbeef;
        status = pNtQuerySystemInformation(SystemTimeOfDayInformation, &sti, 32, &ReturnLength);
        ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
        ok( 32 == ReturnLength, "ReturnLength should be 32, it is (%d)\n", ReturnLength);
        ok( 0xdeadbeef != sti.uCurrentTimeZoneId, "Buffer should have been partially filled\n");

        status = pNtQuerySystemInformation(SystemTimeOfDayInformation, &sti, 49, &ReturnLength);
        ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);
        ok( ReturnLength == 0 || ReturnLength == sizeof(sti) ,
            "ReturnLength should be 0, it is (%d)\n", ReturnLength);

        status = pNtQuerySystemInformation(SystemTimeOfDayInformation, &sti, sizeof(sti), &ReturnLength);
        ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
        ok( sizeof(sti) == ReturnLength, "Inconsistent length %d\n", ReturnLength);
    }


    trace("uCurrentTimeZoneId : (%d)\n", sti.uCurrentTimeZoneId);
}
