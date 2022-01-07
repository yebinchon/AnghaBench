
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {struct TYPE_8__* indexCache; scalar_t__ blockToEvict; TYPE_1__* cachedBlocks; scalar_t__ indexCacheSize; scalar_t__ indexCacheLen; int ownerDirEntry; int * headOfStreamPlaceHolder; int * parentStorage; } ;
struct TYPE_7__ {int index; void* dirty; } ;
typedef int StorageImpl ;
typedef int DirRef ;
typedef TYPE_2__ BlockChainStream ;


 int BlockChainStream_UpdateIndexCache (TYPE_2__*) ;
 scalar_t__ FAILED (int ) ;
 void* FALSE ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;

BlockChainStream* BlockChainStream_Construct(
  StorageImpl* parentStorage,
  ULONG* headOfStreamPlaceHolder,
  DirRef dirEntry)
{
  BlockChainStream* newStream;

  newStream = HeapAlloc(GetProcessHeap(), 0, sizeof(BlockChainStream));
  if(!newStream)
    return ((void*)0);

  newStream->parentStorage = parentStorage;
  newStream->headOfStreamPlaceHolder = headOfStreamPlaceHolder;
  newStream->ownerDirEntry = dirEntry;
  newStream->indexCache = ((void*)0);
  newStream->indexCacheLen = 0;
  newStream->indexCacheSize = 0;
  newStream->cachedBlocks[0].index = 0xffffffff;
  newStream->cachedBlocks[0].dirty = FALSE;
  newStream->cachedBlocks[1].index = 0xffffffff;
  newStream->cachedBlocks[1].dirty = FALSE;
  newStream->blockToEvict = 0;

  if (FAILED(BlockChainStream_UpdateIndexCache(newStream)))
  {
    HeapFree(GetProcessHeap(), 0, newStream->indexCache);
    HeapFree(GetProcessHeap(), 0, newStream);
    return ((void*)0);
  }

  return newStream;
}
