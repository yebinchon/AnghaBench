
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* indexCache; } ;
typedef TYPE_1__ BlockChainStream ;


 int BlockChainStream_Flush (TYPE_1__*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;

void BlockChainStream_Destroy(BlockChainStream* This)
{
  if (This)
  {
    BlockChainStream_Flush(This);
    HeapFree(GetProcessHeap(), 0, This->indexCache);
  }
  HeapFree(GetProcessHeap(), 0, This);
}
