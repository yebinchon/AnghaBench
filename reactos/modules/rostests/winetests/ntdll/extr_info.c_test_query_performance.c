
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
typedef int SYSTEM_PERFORMANCE_INFORMATION ;
typedef scalar_t__ NTSTATUS ;
typedef scalar_t__ DWORD ;


 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ;
 scalar_t__ STATUS_SUCCESS ;
 int SystemPerformanceInformation ;
 scalar_t__ is_wow64 ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pNtQuerySystemInformation (int ,int *,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void test_query_performance(void)
{
    NTSTATUS status;
    ULONG ReturnLength;
    ULONGLONG buffer[sizeof(SYSTEM_PERFORMANCE_INFORMATION)/sizeof(ULONGLONG) + 5];
    DWORD size = sizeof(SYSTEM_PERFORMANCE_INFORMATION);

    status = pNtQuerySystemInformation(SystemPerformanceInformation, buffer, 0, &ReturnLength);
    ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    status = pNtQuerySystemInformation(SystemPerformanceInformation, buffer, size, &ReturnLength);
    if (status == STATUS_INFO_LENGTH_MISMATCH && is_wow64)
    {

        size += 16;
        status = pNtQuerySystemInformation(SystemPerformanceInformation, buffer, size, &ReturnLength);
    }
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    ok( ReturnLength == size, "Inconsistent length %d\n", ReturnLength);

    status = pNtQuerySystemInformation(SystemPerformanceInformation, buffer, size + 2, &ReturnLength);
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    ok( ReturnLength == size || ReturnLength == size + 2,
        "Inconsistent length %d\n", ReturnLength);


}
