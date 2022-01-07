
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PVOID ;
typedef int * PULONG ;
typedef int PEPROCESS ;


 int FALSE ;
 int * MmGetPageTableForProcess (int ,int ,int ) ;
 int MmUnmapPageTable (int *) ;

__attribute__((used)) static ULONG MmGetPageEntryForProcess(PEPROCESS Process, PVOID Address)
{
    ULONG Pte;
    PULONG Pt;

    Pt = MmGetPageTableForProcess(Process, Address, FALSE);
    if (Pt)
    {
        Pte = *Pt;
        MmUnmapPageTable(Pt);
        return Pte;
    }
    return 0;
}
