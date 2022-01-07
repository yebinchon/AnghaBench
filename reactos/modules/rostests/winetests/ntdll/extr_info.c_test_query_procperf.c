
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sbi ;
typedef int ULONG ;
struct TYPE_13__ {int QuadPart; } ;
struct TYPE_12__ {int QuadPart; } ;
struct TYPE_11__ {int QuadPart; } ;
struct TYPE_14__ {int NumberOfProcessors; TYPE_3__ IdleTime; TYPE_2__ UserTime; TYPE_1__ KernelTime; } ;
typedef TYPE_4__ SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION ;
typedef TYPE_4__ SYSTEM_BASIC_INFORMATION ;
typedef int NTSTATUS ;


 int GetProcessHeap () ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_4__*) ;
 TYPE_4__* HeapReAlloc (int ,int ,TYPE_4__*,int) ;
 int STATUS_INFO_LENGTH_MISMATCH ;
 int STATUS_SUCCESS ;
 int SystemBasicInformation ;
 int SystemProcessorPerformanceInformation ;
 int ok (int,char*,...) ;
 int pNtQuerySystemInformation (int ,TYPE_4__*,int,int*) ;

__attribute__((used)) static void test_query_procperf(void)
{
    NTSTATUS status;
    ULONG ReturnLength;
    ULONG NeededLength;
    SYSTEM_BASIC_INFORMATION sbi;
    SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION* sppi;


    status = pNtQuerySystemInformation(SystemBasicInformation, &sbi, sizeof(sbi), &ReturnLength);
    ok(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    NeededLength = sbi.NumberOfProcessors * sizeof(SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION);

    sppi = HeapAlloc(GetProcessHeap(), 0, NeededLength);

    status = pNtQuerySystemInformation(SystemProcessorPerformanceInformation, sppi, 0, &ReturnLength);
    ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);


    sppi->KernelTime.QuadPart = 0xdeaddead;
    sppi->UserTime.QuadPart = 0xdeaddead;
    sppi->IdleTime.QuadPart = 0xdeaddead;
    status = pNtQuerySystemInformation(SystemProcessorPerformanceInformation, sppi,
                                       sizeof(SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION), &ReturnLength);
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    ok( sizeof(SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION) == ReturnLength,
        "Inconsistent length %d\n", ReturnLength);
    ok (sppi->KernelTime.QuadPart != 0xdeaddead, "KernelTime unchanged\n");
    ok (sppi->UserTime.QuadPart != 0xdeaddead, "UserTime unchanged\n");
    ok (sppi->IdleTime.QuadPart != 0xdeaddead, "IdleTime unchanged\n");


    sppi->KernelTime.QuadPart = 0xdeaddead;
    sppi->UserTime.QuadPart = 0xdeaddead;
    sppi->IdleTime.QuadPart = 0xdeaddead;
    status = pNtQuerySystemInformation(SystemProcessorPerformanceInformation, sppi, NeededLength, &ReturnLength);
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    ok( NeededLength == ReturnLength, "Inconsistent length (%d) <-> (%d)\n", NeededLength, ReturnLength);
    ok (sppi->KernelTime.QuadPart != 0xdeaddead, "KernelTime unchanged\n");
    ok (sppi->UserTime.QuadPart != 0xdeaddead, "UserTime unchanged\n");
    ok (sppi->IdleTime.QuadPart != 0xdeaddead, "IdleTime unchanged\n");


    sppi = HeapReAlloc(GetProcessHeap(), 0, sppi , NeededLength + 2);
    sppi->KernelTime.QuadPart = 0xdeaddead;
    sppi->UserTime.QuadPart = 0xdeaddead;
    sppi->IdleTime.QuadPart = 0xdeaddead;
    status = pNtQuerySystemInformation(SystemProcessorPerformanceInformation, sppi, NeededLength + 2, &ReturnLength);
    ok( status == STATUS_SUCCESS || status == STATUS_INFO_LENGTH_MISMATCH ,
        "Expected STATUS_SUCCESS or STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);
    ok( NeededLength == ReturnLength, "Inconsistent length (%d) <-> (%d)\n", NeededLength, ReturnLength);
    if (status == STATUS_SUCCESS)
    {
        ok (sppi->KernelTime.QuadPart != 0xdeaddead, "KernelTime unchanged\n");
        ok (sppi->UserTime.QuadPart != 0xdeaddead, "UserTime unchanged\n");
        ok (sppi->IdleTime.QuadPart != 0xdeaddead, "IdleTime unchanged\n");
    }
    else
    {
        ok (sppi->KernelTime.QuadPart == 0xdeaddead, "KernelTime changed\n");
        ok (sppi->UserTime.QuadPart == 0xdeaddead, "UserTime changed\n");
        ok (sppi->IdleTime.QuadPart == 0xdeaddead, "IdleTime changed\n");
    }

    HeapFree( GetProcessHeap(), 0, sppi);
}
