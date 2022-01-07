
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* Flink; } ;
struct TYPE_8__ {scalar_t__ OpenHandleCount; TYPE_2__ ParentListHead; int RefCount; int PathNameU; struct TYPE_8__* parentFcb; } ;
typedef TYPE_1__* PVFATFCB ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef scalar_t__ BOOLEAN ;


 int ASSERT (int) ;
 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int DPRINT1 (char*,int *,int ,scalar_t__) ;
 scalar_t__ FALSE ;
 int IsListEmpty (TYPE_2__*) ;
 int ParentListEntry ;
 scalar_t__ TRUE ;
 int VFATFCB ;
 scalar_t__ vfatFCBIsDirectory (TYPE_1__*) ;

__attribute__((used)) static
BOOLEAN
IsThereAChildOpened(PVFATFCB FCB)
{
    PLIST_ENTRY Entry;
    PVFATFCB VolFCB;

    for (Entry = FCB->ParentListHead.Flink; Entry != &FCB->ParentListHead; Entry = Entry->Flink)
    {
        VolFCB = CONTAINING_RECORD(Entry, VFATFCB, ParentListEntry);
        if (VolFCB->OpenHandleCount != 0)
        {
            ASSERT(VolFCB->parentFcb == FCB);
            DPRINT1("At least one children file opened! %wZ (%u, %u)\n", &VolFCB->PathNameU, VolFCB->RefCount, VolFCB->OpenHandleCount);
            return TRUE;
        }

        if (vfatFCBIsDirectory(VolFCB) && !IsListEmpty(&VolFCB->ParentListHead))
        {
            if (IsThereAChildOpened(VolFCB))
            {
                return TRUE;
            }
        }
    }

    return FALSE;
}
