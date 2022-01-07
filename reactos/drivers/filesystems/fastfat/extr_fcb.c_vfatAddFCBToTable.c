
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_9__ {size_t HashTableSize; TYPE_1__** FcbHashTable; int FcbListHead; } ;
struct TYPE_7__ {size_t Hash; struct TYPE_7__* next; } ;
struct TYPE_8__ {scalar_t__ parentFcb; TYPE_1__ ShortHash; TYPE_1__ Hash; int FcbListEntry; int PathNameU; } ;
typedef TYPE_2__* PVFATFCB ;
typedef TYPE_3__* PDEVICE_EXTENSION ;


 int ASSERT (int) ;
 int InsertTailList (int *,int *) ;
 int vfatGrabFCB (TYPE_3__*,scalar_t__) ;
 size_t vfatNameHash (int ,int *) ;

__attribute__((used)) static
VOID
vfatAddFCBToTable(
    PDEVICE_EXTENSION pVCB,
    PVFATFCB pFCB)
{
    ULONG Index;
    ULONG ShortIndex;

    ASSERT(pFCB->Hash.Hash == vfatNameHash(0, &pFCB->PathNameU));
    Index = pFCB->Hash.Hash % pVCB->HashTableSize;
    ShortIndex = pFCB->ShortHash.Hash % pVCB->HashTableSize;

    InsertTailList(&pVCB->FcbListHead, &pFCB->FcbListEntry);

    pFCB->Hash.next = pVCB->FcbHashTable[Index];
    pVCB->FcbHashTable[Index] = &pFCB->Hash;
    if (pFCB->Hash.Hash != pFCB->ShortHash.Hash)
    {
        pFCB->ShortHash.next = pVCB->FcbHashTable[ShortIndex];
        pVCB->FcbHashTable[ShortIndex] = &pFCB->ShortHash;
    }
    if (pFCB->parentFcb)
    {
        vfatGrabFCB(pVCB, pFCB->parentFcb);
    }
}
