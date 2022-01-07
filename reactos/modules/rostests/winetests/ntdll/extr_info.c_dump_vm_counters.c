
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* PeakVirtualSize; char const* VirtualSize; char const* PageFaultCount; char const* PeakWorkingSetSize; char const* WorkingSetSize; char const* QuotaPeakPagedPoolUsage; char const* QuotaPagedPoolUsage; char const* QuotaPeakNonPagedPoolUsage; char const* QuotaNonPagedPoolUsage; char const* PagefileUsage; char const* PeakPagefileUsage; } ;
typedef TYPE_1__ VM_COUNTERS ;


 int trace (char*,char const*) ;

__attribute__((used)) static void dump_vm_counters(const char *header, const VM_COUNTERS *pvi)
{
    trace("%s:\n", header);
    trace("PeakVirtualSize           : %lu\n", pvi->PeakVirtualSize);
    trace("VirtualSize               : %lu\n", pvi->VirtualSize);
    trace("PageFaultCount            : %u\n", pvi->PageFaultCount);
    trace("PeakWorkingSetSize        : %lu\n", pvi->PeakWorkingSetSize);
    trace("WorkingSetSize            : %lu\n", pvi->WorkingSetSize);
    trace("QuotaPeakPagedPoolUsage   : %lu\n", pvi->QuotaPeakPagedPoolUsage);
    trace("QuotaPagedPoolUsage       : %lu\n", pvi->QuotaPagedPoolUsage);
    trace("QuotaPeakNonPagePoolUsage : %lu\n", pvi->QuotaPeakNonPagedPoolUsage);
    trace("QuotaNonPagePoolUsage     : %lu\n", pvi->QuotaNonPagedPoolUsage);
    trace("PagefileUsage             : %lu\n", pvi->PagefileUsage);
    trace("PeakPagefileUsage         : %lu\n", pvi->PeakPagefileUsage);
}
