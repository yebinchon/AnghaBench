
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {scalar_t__ Signature; int ListEntry; int Flags; } ;
typedef TYPE_1__* PRX_TOPLEVELIRP_CONTEXT ;
typedef int KIRQL ;


 int ASSERT (int) ;
 int BooleanFlagOn (int ,int ) ;
 int DPRINT (char*,TYPE_1__*) ;
 int InsertTailList (int *,int *) ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int RX_TOPLEVELCTX_FLAG_FROM_POOL ;
 scalar_t__ RX_TOPLEVELIRP_CONTEXT_SIGNATURE ;
 int TopLevelIrpAllocatedContextsList ;
 int TopLevelIrpSpinLock ;

VOID
RxAddToTopLevelIrpAllocatedContextsList(
    PRX_TOPLEVELIRP_CONTEXT TopLevelContext)
{
    KIRQL OldIrql;

    DPRINT("RxAddToTopLevelIrpAllocatedContextsList(%p)\n", TopLevelContext);

    ASSERT(TopLevelContext->Signature == RX_TOPLEVELIRP_CONTEXT_SIGNATURE);
    ASSERT(BooleanFlagOn(TopLevelContext->Flags, RX_TOPLEVELCTX_FLAG_FROM_POOL));

    KeAcquireSpinLock(&TopLevelIrpSpinLock, &OldIrql);
    InsertTailList(&TopLevelIrpAllocatedContextsList, &TopLevelContext->ListEntry);
    KeReleaseSpinLock(&TopLevelIrpSpinLock, OldIrql);
}
