
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int ownerDirEntry; int * headOfStreamPlaceHolder; int * parentStorage; } ;
typedef int StorageImpl ;
typedef TYPE_1__ SmallBlockChainStream ;
typedef int DirRef ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;

SmallBlockChainStream* SmallBlockChainStream_Construct(
  StorageImpl* parentStorage,
  ULONG* headOfStreamPlaceHolder,
  DirRef dirEntry)
{
  SmallBlockChainStream* newStream;

  newStream = HeapAlloc(GetProcessHeap(), 0, sizeof(SmallBlockChainStream));

  newStream->parentStorage = parentStorage;
  newStream->headOfStreamPlaceHolder = headOfStreamPlaceHolder;
  newStream->ownerDirEntry = dirEntry;

  return newStream;
}
