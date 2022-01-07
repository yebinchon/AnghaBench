
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_9__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_12__ {int bigBlockSize; } ;
struct TYPE_11__ {TYPE_4__* parentStorage; int ownerDirEntry; int * headOfStreamPlaceHolder; } ;
struct TYPE_10__ {TYPE_1__ size; } ;
typedef TYPE_2__ DirEntry ;
typedef TYPE_3__ BlockChainStream ;


 scalar_t__ BlockChainStream_GetCount (TYPE_3__*) ;
 int StorageImpl_ReadDirEntry (TYPE_4__*,int ,TYPE_2__*) ;

__attribute__((used)) static ULARGE_INTEGER BlockChainStream_GetSize(BlockChainStream* This)
{
  DirEntry chainEntry;

  if(This->headOfStreamPlaceHolder == ((void*)0))
  {



    StorageImpl_ReadDirEntry(
      This->parentStorage,
      This->ownerDirEntry,
      &chainEntry);

    return chainEntry.size;
  }
  else
  {





    ULARGE_INTEGER result;
    result.QuadPart =
      (ULONGLONG)BlockChainStream_GetCount(This) *
      This->parentStorage->bigBlockSize;

    return result;
  }
}
