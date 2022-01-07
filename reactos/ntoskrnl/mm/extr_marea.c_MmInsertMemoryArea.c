
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int VOID ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_15__ {TYPE_4__* Parent; } ;
struct TYPE_16__ {TYPE_3__ u1; } ;
struct TYPE_19__ {int Unused; TYPE_4__ BalancedRoot; } ;
struct TYPE_18__ {TYPE_9__ VadRoot; } ;
struct TYPE_13__ {int Spare; int Protection; } ;
struct TYPE_14__ {TYPE_1__ VadFlags; } ;
struct TYPE_12__ {scalar_t__ EndingVpn; TYPE_2__ u; } ;
struct TYPE_17__ {scalar_t__ Type; TYPE_10__* Vad; TYPE_10__ VadNode; int Protect; } ;
typedef int PMMSUPPORT ;
typedef TYPE_5__* PMEMORY_AREA ;
typedef TYPE_6__* PEPROCESS ;


 int ASSERT (int) ;
 scalar_t__ MEMORY_AREA_CACHE ;
 scalar_t__ MEMORY_AREA_OWNED_BY_ARM3 ;
 scalar_t__ MEMORY_AREA_SECTION_VIEW ;
 int MiInsertVad (TYPE_10__*,TYPE_9__*) ;
 int MiLockProcessWorkingSetUnsafe (int ,int ) ;
 int MiLockWorkingSet (int ,int *) ;
 int MiMakeProtectionMask (int ) ;
 TYPE_9__ MiRosKernelVadRoot ;
 scalar_t__ MiRosKernelVadRootInitialized ;
 int MiUnlockProcessWorkingSetUnsafe (int ,int ) ;
 int MiUnlockWorkingSet (int ,int *) ;
 TYPE_6__* MmGetAddressSpaceOwner (int ) ;
 int MmSystemCacheWs ;
 scalar_t__ MmSystemRangeStart ;
 int PAGE_SHIFT ;
 int PsGetCurrentProcess () ;
 int PsGetCurrentThread () ;
 scalar_t__ TRUE ;

__attribute__((used)) static VOID
MmInsertMemoryArea(
    PMMSUPPORT AddressSpace,
    PMEMORY_AREA marea)
{
    PEPROCESS Process = MmGetAddressSpaceOwner(AddressSpace);

    marea->VadNode.u.VadFlags.Spare = 1;
    marea->VadNode.u.VadFlags.Protection = MiMakeProtectionMask(marea->Protect);


    if (marea->VadNode.EndingVpn + 1 < (ULONG_PTR)MmSystemRangeStart >> PAGE_SHIFT)
    {
        ASSERT(Process != ((void*)0));
        if (marea->Type != MEMORY_AREA_OWNED_BY_ARM3)
        {
            ASSERT(marea->Type == MEMORY_AREA_SECTION_VIEW || marea->Type == MEMORY_AREA_CACHE);


            MiLockProcessWorkingSetUnsafe(PsGetCurrentProcess(), PsGetCurrentThread());
            MiInsertVad(&marea->VadNode, &Process->VadRoot);
            MiUnlockProcessWorkingSetUnsafe(PsGetCurrentProcess(), PsGetCurrentThread());
            marea->Vad = &marea->VadNode;
        }
    }
    else
    {
        ASSERT(Process == ((void*)0));

        if (!MiRosKernelVadRootInitialized)
        {
            MiRosKernelVadRoot.BalancedRoot.u1.Parent = &MiRosKernelVadRoot.BalancedRoot;
            MiRosKernelVadRoot.Unused = 1;
            MiRosKernelVadRootInitialized = TRUE;
        }


        MiLockWorkingSet(PsGetCurrentThread(), &MmSystemCacheWs);
        MiInsertVad(&marea->VadNode, &MiRosKernelVadRoot);
        MiUnlockWorkingSet(PsGetCurrentThread(), &MmSystemCacheWs);
        marea->Vad = ((void*)0);
    }
}
