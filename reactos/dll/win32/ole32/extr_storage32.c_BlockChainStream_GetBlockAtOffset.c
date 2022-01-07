
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_7__ {scalar_t__ index; scalar_t__ sector; void* read; void* dirty; int data; } ;
struct TYPE_6__ {int blockToEvict; int parentStorage; TYPE_2__* cachedBlocks; } ;
typedef int HRESULT ;
typedef TYPE_1__ BlockChainStream ;
typedef TYPE_2__ BlockChainBlock ;
typedef scalar_t__ BOOL ;


 scalar_t__ BLOCK_END_OF_CHAIN ;
 scalar_t__ BlockChainStream_GetSectorOfOffset (TYPE_1__*,scalar_t__) ;
 void* FALSE ;
 int STG_E_DOCFILECORRUPT ;
 int STG_E_WRITEFAULT ;
 int S_OK ;
 int StorageImpl_WriteBigBlock (int ,scalar_t__,int ) ;

__attribute__((used)) static HRESULT BlockChainStream_GetBlockAtOffset(BlockChainStream *This,
    ULONG index, BlockChainBlock **block, ULONG *sector, BOOL create)
{
  BlockChainBlock *result=((void*)0);
  int i;

  for (i=0; i<2; i++)
    if (This->cachedBlocks[i].index == index)
    {
      *sector = This->cachedBlocks[i].sector;
      *block = &This->cachedBlocks[i];
      return S_OK;
    }

  *sector = BlockChainStream_GetSectorOfOffset(This, index);
  if (*sector == BLOCK_END_OF_CHAIN)
    return STG_E_DOCFILECORRUPT;

  if (create)
  {
    if (This->cachedBlocks[0].index == 0xffffffff)
      result = &This->cachedBlocks[0];
    else if (This->cachedBlocks[1].index == 0xffffffff)
      result = &This->cachedBlocks[1];
    else
    {
      result = &This->cachedBlocks[This->blockToEvict++];
      if (This->blockToEvict == 2)
        This->blockToEvict = 0;
    }

    if (result->dirty)
    {
      if (!StorageImpl_WriteBigBlock(This->parentStorage, result->sector, result->data))
        return STG_E_WRITEFAULT;
      result->dirty = FALSE;
    }

    result->read = FALSE;
    result->index = index;
    result->sector = *sector;
  }

  *block = result;
  return S_OK;
}
