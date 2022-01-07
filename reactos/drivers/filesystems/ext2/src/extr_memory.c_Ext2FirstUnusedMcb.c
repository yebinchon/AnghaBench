
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_14__ {scalar_t__ QuadPart; } ;
struct TYPE_13__ {scalar_t__ Refercount; int Link; struct TYPE_13__* Next; int Flags; int * Child; int * Fcb; } ;
struct TYPE_12__ {scalar_t__ NumOfMcb; int McbLock; int McbList; } ;
typedef int * PLIST_ENTRY ;
typedef TYPE_1__* PEXT2_VCB ;
typedef TYPE_2__* PEXT2_MCB ;
typedef int LONGLONG ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef scalar_t__ BOOLEAN ;


 int ASSERT (int ) ;
 TYPE_2__* CONTAINING_RECORD (int *,int ,int ) ;
 int ClearLongFlag (int ,int ) ;
 int EXT2_MCB ;
 int ExAcquireResourceExclusiveLite (int *,scalar_t__) ;
 int ExReleaseResourceLite (int *) ;
 int Ext2DerefXcb (scalar_t__*) ;
 int Ext2RemoveMcb (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ FALSE ;
 int InsertTailList (int *,int *) ;
 int IsFlagOn (int ,int ) ;
 scalar_t__ IsListEmpty (int *) ;
 int IsMcbRoot (TYPE_2__*) ;
 scalar_t__ IsMcbSymLink (TYPE_2__*) ;
 int KeQuerySystemTime (TYPE_3__*) ;
 int Link ;
 int MCB_VCB_LINK ;
 int * RemoveHeadList (int *) ;
 scalar_t__ TRUE ;

PEXT2_MCB
Ext2FirstUnusedMcb(PEXT2_VCB Vcb, BOOLEAN Wait, ULONG Number)
{
    PEXT2_MCB Head = ((void*)0);
    PEXT2_MCB Tail = ((void*)0);
    PEXT2_MCB Mcb = ((void*)0);
    PLIST_ENTRY List = ((void*)0);
    ULONG i = 0;
    LARGE_INTEGER start, now;

    if (!ExAcquireResourceExclusiveLite(&Vcb->McbLock, Wait)) {
        return ((void*)0);
    }

    KeQuerySystemTime(&start);

    while (Number--) {

        BOOLEAN Skip = TRUE;

        if (IsListEmpty(&Vcb->McbList)) {
            break;
        }

        while (i++ < Vcb->NumOfMcb) {

            KeQuerySystemTime(&now);
            if (now.QuadPart > start.QuadPart + (LONGLONG)10*1000*1000) {
                break;
            }

            List = RemoveHeadList(&Vcb->McbList);
            Mcb = CONTAINING_RECORD(List, EXT2_MCB, Link);
            ASSERT(IsFlagOn(Mcb->Flags, MCB_VCB_LINK));

            if (Mcb->Fcb == ((void*)0) && !IsMcbRoot(Mcb) &&
                    Mcb->Refercount == 0 &&
                    (Mcb->Child == ((void*)0) || IsMcbSymLink(Mcb))) {

                Ext2RemoveMcb(Vcb, Mcb);
                ClearLongFlag(Mcb->Flags, MCB_VCB_LINK);
                Ext2DerefXcb(&Vcb->NumOfMcb);


                if (Head) {
                    ASSERT(Tail != ((void*)0));
                    Tail->Next = Mcb;
                    Tail = Mcb;
                } else {
                    Head = Tail = Mcb;
                }
                Tail->Next = ((void*)0);
                Skip = FALSE;

            } else {

                InsertTailList(&Vcb->McbList, &Mcb->Link);
                Mcb = ((void*)0);
            }
        }

        if (Skip)
            break;
    }

    ExReleaseResourceLite(&Vcb->McbLock);

    return Head;
}
