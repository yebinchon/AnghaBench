
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sbi ;
typedef int ULONG ;
struct TYPE_6__ {int NumberOfProcessors; } ;
typedef TYPE_1__ SYSTEM_INTERRUPT_INFORMATION ;
typedef TYPE_1__ SYSTEM_BASIC_INFORMATION ;
typedef scalar_t__ NTSTATUS ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ;
 scalar_t__ STATUS_SUCCESS ;
 int SystemBasicInformation ;
 int SystemInterruptInformation ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pNtQuerySystemInformation (int ,TYPE_1__*,int,int*) ;

__attribute__((used)) static void test_query_interrupt(void)
{
    NTSTATUS status;
    ULONG ReturnLength;
    ULONG NeededLength;
    SYSTEM_BASIC_INFORMATION sbi;
    SYSTEM_INTERRUPT_INFORMATION* sii;


    status = pNtQuerySystemInformation(SystemBasicInformation, &sbi, sizeof(sbi), &ReturnLength);
    ok(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    NeededLength = sbi.NumberOfProcessors * sizeof(SYSTEM_INTERRUPT_INFORMATION);

    sii = HeapAlloc(GetProcessHeap(), 0, NeededLength);

    status = pNtQuerySystemInformation(SystemInterruptInformation, sii, 0, &ReturnLength);
    ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);


    status = pNtQuerySystemInformation(SystemInterruptInformation, sii, NeededLength, &ReturnLength);
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);





    HeapFree( GetProcessHeap(), 0, sii);
}
