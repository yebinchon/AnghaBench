
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_7__ {int QuadPart; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
struct TYPE_8__ {TYPE_1__* parentStorage; } ;
struct TYPE_6__ {int smallBlockDepotChain; } ;
typedef TYPE_3__ SmallBlockChainStream ;
typedef int DWORD ;
typedef int BYTE ;


 int BlockChainStream_WriteAt (int ,TYPE_2__,int,int *,scalar_t__*) ;
 int StorageUtl_WriteDWord (int *,int ,scalar_t__) ;

__attribute__((used)) static void SmallBlockChainStream_SetNextBlockInChain(
  SmallBlockChainStream* This,
  ULONG blockIndex,
  ULONG nextBlock)
{
  ULARGE_INTEGER offsetOfBlockInDepot;
  DWORD buffer;
  ULONG bytesWritten;

  offsetOfBlockInDepot.QuadPart = (ULONGLONG)blockIndex * sizeof(ULONG);

  StorageUtl_WriteDWord((BYTE *)&buffer, 0, nextBlock);




  BlockChainStream_WriteAt(
    This->parentStorage->smallBlockDepotChain,
    offsetOfBlockInDepot,
    sizeof(DWORD),
    &buffer,
    &bytesWritten);
}
