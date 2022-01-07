
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ PULONG ;


 int KeInvalidateTlbEntry (scalar_t__) ;
 scalar_t__ MmSystemRangeStart ;
 scalar_t__ MmUnmapPageTable (scalar_t__) ;

VOID
MiFlushTlb(PULONG Pt, PVOID Address)
{
    if ((Pt && MmUnmapPageTable(Pt)) || Address >= MmSystemRangeStart)
    {
        KeInvalidateTlbEntry(Address);
    }
}
