
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int ToDeref; int ToUnmap; } ;
typedef TYPE_1__* PWORK_QUEUE_WITH_CONTEXT ;
typedef int PVOID ;


 int DPRINT (char*,...) ;
 int ExFreePool (TYPE_1__*) ;
 int MmUnmapCacheViewInSystemSpace (int ) ;
 int ObDereferenceObject (int ) ;

VOID
CcpUnmapCache(PVOID Context)
{
    PWORK_QUEUE_WITH_CONTEXT WorkItem = (PWORK_QUEUE_WITH_CONTEXT)Context;
    DPRINT("Unmapping (finally) %x\n", WorkItem->ToUnmap);
    MmUnmapCacheViewInSystemSpace(WorkItem->ToUnmap);
    ObDereferenceObject(WorkItem->ToDeref);
    ExFreePool(WorkItem);
    DPRINT("Done\n");
}
