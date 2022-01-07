
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_6__ {scalar_t__* headOfStreamPlaceHolder; scalar_t__ ownerDirEntry; int parentStorage; } ;
struct TYPE_5__ {scalar_t__ startingBlock; } ;
typedef int HRESULT ;
typedef TYPE_1__ DirEntry ;
typedef TYPE_2__ BlockChainStream ;


 scalar_t__ BLOCK_END_OF_CHAIN ;
 scalar_t__ BLOCK_FIRST_SPECIAL ;
 scalar_t__ DIRENTRY_NULL ;
 scalar_t__ SUCCEEDED (int ) ;
 int StorageImpl_ReadDirEntry (int ,scalar_t__,TYPE_1__*) ;

__attribute__((used)) static ULONG BlockChainStream_GetHeadOfChain(BlockChainStream* This)
{
  DirEntry chainEntry;
  HRESULT hr;

  if (This->headOfStreamPlaceHolder != 0)
    return *(This->headOfStreamPlaceHolder);

  if (This->ownerDirEntry != DIRENTRY_NULL)
  {
    hr = StorageImpl_ReadDirEntry(
                      This->parentStorage,
                      This->ownerDirEntry,
                      &chainEntry);

    if (SUCCEEDED(hr) && chainEntry.startingBlock < BLOCK_FIRST_SPECIAL)
      return chainEntry.startingBlock;
  }

  return BLOCK_END_OF_CHAIN;
}
