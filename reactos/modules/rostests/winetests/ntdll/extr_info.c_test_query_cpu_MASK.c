#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sci ;
typedef  int ULONG ;
struct TYPE_3__ {int FeatureSet; } ;
typedef  TYPE_1__ SYSTEM_CPU_INFORMATION ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  SystemCpuInformation ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
    DWORD status;
    ULONG ReturnLength;
    SYSTEM_CPU_INFORMATION sci;

    status = FUNC1(SystemCpuInformation, &sci, sizeof(sci), &ReturnLength);
    FUNC0( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC0( sizeof(sci) == ReturnLength, "Inconsistent length %d\n", ReturnLength);

    /* Check if we have some return values */
    FUNC2("Processor FeatureSet : %08x\n", sci.FeatureSet);
    FUNC0( sci.FeatureSet != 0, "Expected some features for this processor, got %08x\n", sci.FeatureSet);
}