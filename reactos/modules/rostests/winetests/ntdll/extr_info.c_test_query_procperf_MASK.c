#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sbi ;
typedef  int ULONG ;
struct TYPE_13__ {int QuadPart; } ;
struct TYPE_12__ {int QuadPart; } ;
struct TYPE_11__ {int QuadPart; } ;
struct TYPE_14__ {int NumberOfProcessors; TYPE_3__ IdleTime; TYPE_2__ UserTime; TYPE_1__ KernelTime; } ;
typedef  TYPE_4__ SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION ;
typedef  TYPE_4__ SYSTEM_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  STATUS_INFO_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  SystemBasicInformation ; 
 int /*<<< orphan*/  SystemProcessorPerformanceInformation ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int,int*) ; 

__attribute__((used)) static void FUNC6(void)
{
    NTSTATUS status;
    ULONG ReturnLength;
    ULONG NeededLength;
    SYSTEM_BASIC_INFORMATION sbi;
    SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION* sppi;

    /* Find out the number of processors */
    status = FUNC5(SystemBasicInformation, &sbi, sizeof(sbi), &ReturnLength);
    FUNC4(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    NeededLength = sbi.NumberOfProcessors * sizeof(SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION);

    sppi = FUNC1(FUNC0(), 0, NeededLength);

    status = FUNC5(SystemProcessorPerformanceInformation, sppi, 0, &ReturnLength);
    FUNC4( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    /* Try it for 1 processor */
    sppi->KernelTime.QuadPart = 0xdeaddead;
    sppi->UserTime.QuadPart = 0xdeaddead;
    sppi->IdleTime.QuadPart = 0xdeaddead;
    status = FUNC5(SystemProcessorPerformanceInformation, sppi,
                                       sizeof(SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION), &ReturnLength);
    FUNC4( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC4( sizeof(SYSTEM_PROCESSOR_PERFORMANCE_INFORMATION) == ReturnLength,
        "Inconsistent length %d\n", ReturnLength);
    FUNC4 (sppi->KernelTime.QuadPart != 0xdeaddead, "KernelTime unchanged\n");
    FUNC4 (sppi->UserTime.QuadPart != 0xdeaddead, "UserTime unchanged\n");
    FUNC4 (sppi->IdleTime.QuadPart != 0xdeaddead, "IdleTime unchanged\n");

    /* Try it for all processors */
    sppi->KernelTime.QuadPart = 0xdeaddead;
    sppi->UserTime.QuadPart = 0xdeaddead;
    sppi->IdleTime.QuadPart = 0xdeaddead;
    status = FUNC5(SystemProcessorPerformanceInformation, sppi, NeededLength, &ReturnLength);
    FUNC4( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC4( NeededLength == ReturnLength, "Inconsistent length (%d) <-> (%d)\n", NeededLength, ReturnLength);
    FUNC4 (sppi->KernelTime.QuadPart != 0xdeaddead, "KernelTime unchanged\n");
    FUNC4 (sppi->UserTime.QuadPart != 0xdeaddead, "UserTime unchanged\n");
    FUNC4 (sppi->IdleTime.QuadPart != 0xdeaddead, "IdleTime unchanged\n");

    /* A too large given buffer size */
    sppi = FUNC3(FUNC0(), 0, sppi , NeededLength + 2);
    sppi->KernelTime.QuadPart = 0xdeaddead;
    sppi->UserTime.QuadPart = 0xdeaddead;
    sppi->IdleTime.QuadPart = 0xdeaddead;
    status = FUNC5(SystemProcessorPerformanceInformation, sppi, NeededLength + 2, &ReturnLength);
    FUNC4( status == STATUS_SUCCESS || status == STATUS_INFO_LENGTH_MISMATCH /* vista */,
        "Expected STATUS_SUCCESS or STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);
    FUNC4( NeededLength == ReturnLength, "Inconsistent length (%d) <-> (%d)\n", NeededLength, ReturnLength);
    if (status == STATUS_SUCCESS)
    {
        FUNC4 (sppi->KernelTime.QuadPart != 0xdeaddead, "KernelTime unchanged\n");
        FUNC4 (sppi->UserTime.QuadPart != 0xdeaddead, "UserTime unchanged\n");
        FUNC4 (sppi->IdleTime.QuadPart != 0xdeaddead, "IdleTime unchanged\n");
    }
    else /* vista and 2008 */
    {
        FUNC4 (sppi->KernelTime.QuadPart == 0xdeaddead, "KernelTime changed\n");
        FUNC4 (sppi->UserTime.QuadPart == 0xdeaddead, "UserTime changed\n");
        FUNC4 (sppi->IdleTime.QuadPart == 0xdeaddead, "IdleTime changed\n");
    }

    FUNC2( FUNC0(), 0, sppi);
}