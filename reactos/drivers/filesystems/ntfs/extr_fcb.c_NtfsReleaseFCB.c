
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {scalar_t__ RefCount; int FileObject; int FcbListEntry; int PathName; } ;
struct TYPE_8__ {int FcbListLock; } ;
typedef TYPE_1__* PNTFS_VCB ;
typedef TYPE_2__* PNTFS_FCB ;
typedef int KIRQL ;


 int CcUninitializeCacheMap (int ,int *,int *) ;
 int DPRINT (char*,TYPE_2__*,int ,scalar_t__) ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int NtfsDestroyFCB (TYPE_2__*) ;
 int NtfsFCBIsDirectory (TYPE_2__*) ;
 int RemoveEntryList (int *) ;

VOID
NtfsReleaseFCB(PNTFS_VCB Vcb,
               PNTFS_FCB Fcb)
{
    KIRQL oldIrql;

    DPRINT("releasing FCB at %p: %S, refCount:%d\n",
           Fcb,
           Fcb->PathName,
           Fcb->RefCount);

    KeAcquireSpinLock(&Vcb->FcbListLock, &oldIrql);
    Fcb->RefCount--;
    if (Fcb->RefCount <= 0 && !NtfsFCBIsDirectory(Fcb))
    {
        RemoveEntryList(&Fcb->FcbListEntry);
        KeReleaseSpinLock(&Vcb->FcbListLock, oldIrql);
        CcUninitializeCacheMap(Fcb->FileObject, ((void*)0), ((void*)0));
        NtfsDestroyFCB(Fcb);
    }
    else
    {
        KeReleaseSpinLock(&Vcb->FcbListLock, oldIrql);
    }
}
