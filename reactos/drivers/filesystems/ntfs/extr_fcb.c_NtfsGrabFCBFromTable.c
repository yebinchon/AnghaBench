
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* Flink; } ;
struct TYPE_11__ {int RefCount; int PathName; } ;
struct TYPE_10__ {int FcbListLock; TYPE_4__ FcbListHead; TYPE_1__* StreamFileObject; } ;
struct TYPE_9__ {TYPE_3__* FsContext; } ;
typedef TYPE_2__* PNTFS_VCB ;
typedef TYPE_3__* PNTFS_FCB ;
typedef TYPE_4__* PLIST_ENTRY ;
typedef scalar_t__* PCWSTR ;
typedef int KIRQL ;


 TYPE_3__* CONTAINING_RECORD (TYPE_4__*,int ,int ) ;
 int DPRINT (char*,...) ;
 int FcbListEntry ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int NTFS_FCB ;
 scalar_t__ _wcsicmp (scalar_t__*,int ) ;

PNTFS_FCB
NtfsGrabFCBFromTable(PNTFS_VCB Vcb,
                     PCWSTR FileName)
{
    KIRQL oldIrql;
    PNTFS_FCB Fcb;
    PLIST_ENTRY current_entry;

    KeAcquireSpinLock(&Vcb->FcbListLock, &oldIrql);

    if (FileName == ((void*)0) || *FileName == 0)
    {
        DPRINT("Return FCB for stream file object\n");
        Fcb = Vcb->StreamFileObject->FsContext;
        Fcb->RefCount++;
        KeReleaseSpinLock(&Vcb->FcbListLock, oldIrql);
        return Fcb;
    }

    current_entry = Vcb->FcbListHead.Flink;
    while (current_entry != &Vcb->FcbListHead)
    {
        Fcb = CONTAINING_RECORD(current_entry, NTFS_FCB, FcbListEntry);

        DPRINT("Comparing '%S' and '%S'\n", FileName, Fcb->PathName);
        if (_wcsicmp(FileName, Fcb->PathName) == 0)
        {
            Fcb->RefCount++;
            KeReleaseSpinLock(&Vcb->FcbListLock, oldIrql);
            return Fcb;
        }



        current_entry = current_entry->Flink;
    }

    KeReleaseSpinLock(&Vcb->FcbListLock, oldIrql);

    return ((void*)0);
}
