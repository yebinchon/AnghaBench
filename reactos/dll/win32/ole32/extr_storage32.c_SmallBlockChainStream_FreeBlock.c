
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SmallBlockChainStream ;


 int BLOCK_UNUSED ;
 int SmallBlockChainStream_SetNextBlockInChain (int *,int ,int ) ;

__attribute__((used)) static void SmallBlockChainStream_FreeBlock(
  SmallBlockChainStream* This,
  ULONG blockIndex)
{
  SmallBlockChainStream_SetNextBlockInChain(This, blockIndex, BLOCK_UNUSED);
}
