
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_14__ {int * DirectoryTableBase; } ;
struct TYPE_18__ {TYPE_1__ Pcb; } ;
struct TYPE_15__ {int Valid; int PageFrameNumber; } ;
struct TYPE_16__ {scalar_t__ Long; TYPE_2__ Hard; } ;
struct TYPE_17__ {TYPE_3__ u; } ;
typedef scalar_t__ PVOID ;
typedef int * PULONG ;
typedef TYPE_4__* PMMPDE ;
typedef int PFN_NUMBER ;
typedef TYPE_5__* PEPROCESS ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOLEAN ;


 int ASSERT (int) ;
 int DBG_UNREFERENCED_LOCAL_VARIABLE (int ) ;
 int DemandZeroPde ;
 scalar_t__ FALSE ;
 scalar_t__ KeAreAllApcsDisabled () ;
 int KeBugCheck (int ) ;
 int MEMORY_MANAGEMENT ;
 int MI_WRITE_INVALID_PTE (TYPE_4__*,int ) ;
 TYPE_4__* MiAddressToPde (scalar_t__) ;
 scalar_t__ MiAddressToPte (scalar_t__) ;
 int MiAddressToPteOffset (scalar_t__) ;
 int MiDispatchFault (int,int *,TYPE_4__*,int *,scalar_t__,TYPE_5__*,int *,int *) ;
 int MiFillSystemPageDirectory (scalar_t__,int ) ;
 int MiGetPdeOffset (scalar_t__) ;
 int MiSynchronizeSystemPde (TYPE_4__*) ;
 void* MmCreateHyperspaceMapping (int ) ;
 int MmDeleteHyperspaceMapping (TYPE_4__*) ;
 scalar_t__ MmSystemRangeStart ;
 int PAGE_SIZE ;
 int PTE_TO_PFN (int ) ;
 TYPE_5__* PsGetCurrentProcess () ;
 scalar_t__ TRUE ;

__attribute__((used)) static PULONG
MmGetPageTableForProcess(PEPROCESS Process, PVOID Address, BOOLEAN Create)
{
    PFN_NUMBER Pfn;
    PULONG Pt;
    PMMPDE PointerPde;

    if (Address < MmSystemRangeStart)
    {

        ASSERT(Process != ((void*)0));

        if(Process != PsGetCurrentProcess())
        {
            PMMPDE PdeBase;
            ULONG PdeOffset = MiGetPdeOffset(Address);



            ASSERT(Create == FALSE);

            PdeBase = MmCreateHyperspaceMapping(PTE_TO_PFN(Process->Pcb.DirectoryTableBase[0]));
            if (PdeBase == ((void*)0))
            {
                KeBugCheck(MEMORY_MANAGEMENT);
            }
            PointerPde = PdeBase + PdeOffset;
            if (PointerPde->u.Hard.Valid == 0)
            {
                MmDeleteHyperspaceMapping(PdeBase);
                return ((void*)0);
            }
            else
            {
                Pfn = PointerPde->u.Hard.PageFrameNumber;
            }
            MmDeleteHyperspaceMapping(PdeBase);
            Pt = MmCreateHyperspaceMapping(Pfn);
            if (Pt == ((void*)0))
            {
                KeBugCheck(MEMORY_MANAGEMENT);
            }
            return Pt + MiAddressToPteOffset(Address);
        }

        PointerPde = MiAddressToPde(Address);
        Pt = (PULONG)MiAddressToPte(Address);
        if (PointerPde->u.Hard.Valid == 0)
        {
            NTSTATUS Status;
            if (Create == FALSE)
            {
                return ((void*)0);
            }
            ASSERT(PointerPde->u.Long == 0);

            MI_WRITE_INVALID_PTE(PointerPde, DemandZeroPde);

            Status = MiDispatchFault(0x1,
                                     Pt,
                                     PointerPde,
                                     ((void*)0),
                                     FALSE,
                                     PsGetCurrentProcess(),
                                     ((void*)0),
                                     ((void*)0));
            DBG_UNREFERENCED_LOCAL_VARIABLE(Status);
            ASSERT(KeAreAllApcsDisabled() == TRUE);
            ASSERT(PointerPde->u.Hard.Valid == 1);
        }
        return (PULONG)MiAddressToPte(Address);
    }


    ASSERT(Process == ((void*)0));
    PointerPde = MiAddressToPde(Address);
    Pt = (PULONG)MiAddressToPte(Address);
    if (PointerPde->u.Hard.Valid == 0)
    {

        if(!MiSynchronizeSystemPde(PointerPde))
        {

            if(Create == FALSE)
                return ((void*)0);
            MiFillSystemPageDirectory(Address, PAGE_SIZE);
        }
    }
    return Pt;
}
