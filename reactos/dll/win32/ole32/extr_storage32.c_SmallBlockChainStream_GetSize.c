
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int LowPart; scalar_t__ HighPart; } ;
struct TYPE_11__ {TYPE_1__ u; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
struct TYPE_14__ {int smallBlockSize; } ;
struct TYPE_13__ {TYPE_2__ size; } ;
struct TYPE_12__ {int ownerDirEntry; TYPE_5__* parentStorage; int * headOfStreamPlaceHolder; } ;
typedef TYPE_3__ SmallBlockChainStream ;
typedef TYPE_4__ DirEntry ;


 int SmallBlockChainStream_GetCount (TYPE_3__*) ;
 int StorageImpl_ReadDirEntry (TYPE_5__*,int ,TYPE_4__*) ;

__attribute__((used)) static ULARGE_INTEGER SmallBlockChainStream_GetSize(SmallBlockChainStream* This)
{
  DirEntry chainEntry;

  if(This->headOfStreamPlaceHolder != ((void*)0))
  {
    ULARGE_INTEGER result;
    result.u.HighPart = 0;

    result.u.LowPart = SmallBlockChainStream_GetCount(This) *
        This->parentStorage->smallBlockSize;

    return result;
  }

  StorageImpl_ReadDirEntry(
    This->parentStorage,
    This->ownerDirEntry,
    &chainEntry);

  return chainEntry.size;
}
