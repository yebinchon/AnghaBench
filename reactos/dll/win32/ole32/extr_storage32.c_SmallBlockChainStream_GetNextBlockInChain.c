
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_7__ {int QuadPart; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
struct TYPE_8__ {TYPE_1__* parentStorage; } ;
struct TYPE_6__ {int smallBlockDepotChain; } ;
typedef TYPE_3__ SmallBlockChainStream ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 int BLOCK_END_OF_CHAIN ;
 int BlockChainStream_ReadAt (int ,TYPE_2__,int,int *,int*) ;
 int STG_E_READFAULT ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int StorageUtl_ReadDWord (int *,int ,int*) ;

__attribute__((used)) static HRESULT SmallBlockChainStream_GetNextBlockInChain(
  SmallBlockChainStream* This,
  ULONG blockIndex,
  ULONG* nextBlockInChain)
{
  ULARGE_INTEGER offsetOfBlockInDepot;
  DWORD buffer;
  ULONG bytesRead;
  HRESULT res;

  *nextBlockInChain = BLOCK_END_OF_CHAIN;

  offsetOfBlockInDepot.QuadPart = (ULONGLONG)blockIndex * sizeof(ULONG);




  res = BlockChainStream_ReadAt(
              This->parentStorage->smallBlockDepotChain,
              offsetOfBlockInDepot,
              sizeof(DWORD),
              &buffer,
              &bytesRead);

  if (SUCCEEDED(res) && bytesRead != sizeof(DWORD))
    res = STG_E_READFAULT;

  if (SUCCEEDED(res))
  {
    StorageUtl_ReadDWord((BYTE *)&buffer, 0, nextBlockInChain);
    return S_OK;
  }

  return res;
}
