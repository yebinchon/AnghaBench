
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cachedBlocks; int parentStorage; } ;
struct TYPE_4__ {scalar_t__ dirty; int data; int sector; } ;
typedef int HRESULT ;
typedef TYPE_2__ BlockChainStream ;


 scalar_t__ FALSE ;
 int STG_E_WRITEFAULT ;
 int S_OK ;
 scalar_t__ StorageImpl_WriteBigBlock (int ,int ,int ) ;

HRESULT BlockChainStream_Flush(BlockChainStream* This)
{
  int i;
  if (!This) return S_OK;
  for (i=0; i<2; i++)
  {
    if (This->cachedBlocks[i].dirty)
    {
      if (StorageImpl_WriteBigBlock(This->parentStorage, This->cachedBlocks[i].sector, This->cachedBlocks[i].data))
        This->cachedBlocks[i].dirty = FALSE;
      else
        return STG_E_WRITEFAULT;
    }
  }
  return S_OK;
}
