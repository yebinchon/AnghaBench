
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int skdi ;
typedef int ULONG ;
typedef int SYSTEM_KERNEL_DEBUGGER_INFORMATION ;
typedef int NTSTATUS ;


 int STATUS_INFO_LENGTH_MISMATCH ;
 int STATUS_SUCCESS ;
 int SystemKernelDebuggerInformation ;
 int ok (int,char*,int) ;
 int pNtQuerySystemInformation (int ,int *,int,int*) ;

__attribute__((used)) static void test_query_kerndebug(void)
{
    NTSTATUS status;
    ULONG ReturnLength;
    SYSTEM_KERNEL_DEBUGGER_INFORMATION skdi;

    status = pNtQuerySystemInformation(SystemKernelDebuggerInformation, &skdi, 0, &ReturnLength);
    ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    status = pNtQuerySystemInformation(SystemKernelDebuggerInformation, &skdi, sizeof(skdi), &ReturnLength);
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    ok( sizeof(skdi) == ReturnLength, "Inconsistent length %d\n", ReturnLength);

    status = pNtQuerySystemInformation(SystemKernelDebuggerInformation, &skdi, sizeof(skdi) + 2, &ReturnLength);
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    ok( sizeof(skdi) == ReturnLength, "Inconsistent length %d\n", ReturnLength);
}
