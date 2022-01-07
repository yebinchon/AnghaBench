
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clusterManagerNode ;


 int clusterManagerAddSlot (int *,int) ;
 int clusterManagerBumpEpoch (int *) ;
 int clusterManagerClearSlotStatus (int *,int) ;
 int clusterManagerDelSlot (int *,int,int) ;
 int clusterManagerExecTransaction (int *,int ) ;
 int clusterManagerOnSetOwnerErr ;
 int clusterManagerStartTransaction (int *) ;

__attribute__((used)) static int clusterManagerSetSlotOwner(clusterManagerNode *owner,
                                      int slot,
                                      int do_clear)
{
    int success = clusterManagerStartTransaction(owner);
    if (!success) return 0;

    clusterManagerDelSlot(owner, slot, 1);

    clusterManagerAddSlot(owner, slot);
    if (do_clear) clusterManagerClearSlotStatus(owner, slot);
    clusterManagerBumpEpoch(owner);
    success = clusterManagerExecTransaction(owner, clusterManagerOnSetOwnerErr);
    return success;
}
