#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sbi ;
typedef  int ULONG ;
struct TYPE_6__ {int NumberOfProcessors; } ;
typedef  TYPE_1__ SYSTEM_INTERRUPT_INFORMATION ;
typedef  TYPE_1__ SYSTEM_BASIC_INFORMATION ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  SystemBasicInformation ; 
 int /*<<< orphan*/  SystemInterruptInformation ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 

__attribute__((used)) static void FUNC5(void)
{
    NTSTATUS status;
    ULONG ReturnLength;
    ULONG NeededLength;
    SYSTEM_BASIC_INFORMATION sbi;
    SYSTEM_INTERRUPT_INFORMATION* sii;

    /* Find out the number of processors */
    status = FUNC4(SystemBasicInformation, &sbi, sizeof(sbi), &ReturnLength);
    FUNC3(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    NeededLength = sbi.NumberOfProcessors * sizeof(SYSTEM_INTERRUPT_INFORMATION);

    sii = FUNC1(FUNC0(), 0, NeededLength);

    status = FUNC4(SystemInterruptInformation, sii, 0, &ReturnLength);
    FUNC3( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    /* Try it for all processors */
    status = FUNC4(SystemInterruptInformation, sii, NeededLength, &ReturnLength);
    FUNC3( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);

    /* Windows XP and W2K3 (and others?) always return 0 for the ReturnLength
     * No test added for this as it's highly unlikely that an app depends on this
    */

    FUNC2( FUNC0(), 0, sii);
}