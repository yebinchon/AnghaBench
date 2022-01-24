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
struct TYPE_3__ {char const* PeakVirtualSize; char const* VirtualSize; char const* PageFaultCount; char const* PeakWorkingSetSize; char const* WorkingSetSize; char const* QuotaPeakPagedPoolUsage; char const* QuotaPagedPoolUsage; char const* QuotaPeakNonPagedPoolUsage; char const* QuotaNonPagedPoolUsage; char const* PagefileUsage; char const* PeakPagefileUsage; } ;
typedef  TYPE_1__ VM_COUNTERS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 

__attribute__((used)) static void FUNC1(const char *header, const VM_COUNTERS *pvi)
{
    FUNC0("%s:\n", header);
    FUNC0("PeakVirtualSize           : %lu\n", pvi->PeakVirtualSize);
    FUNC0("VirtualSize               : %lu\n", pvi->VirtualSize);
    FUNC0("PageFaultCount            : %u\n",  pvi->PageFaultCount);
    FUNC0("PeakWorkingSetSize        : %lu\n", pvi->PeakWorkingSetSize);
    FUNC0("WorkingSetSize            : %lu\n", pvi->WorkingSetSize);
    FUNC0("QuotaPeakPagedPoolUsage   : %lu\n", pvi->QuotaPeakPagedPoolUsage);
    FUNC0("QuotaPagedPoolUsage       : %lu\n", pvi->QuotaPagedPoolUsage);
    FUNC0("QuotaPeakNonPagePoolUsage : %lu\n", pvi->QuotaPeakNonPagedPoolUsage);
    FUNC0("QuotaNonPagePoolUsage     : %lu\n", pvi->QuotaNonPagedPoolUsage);
    FUNC0("PagefileUsage             : %lu\n", pvi->PagefileUsage);
    FUNC0("PeakPagefileUsage         : %lu\n", pvi->PeakPagefileUsage);
}