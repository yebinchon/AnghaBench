
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int numBlocks; } ;
typedef TYPE_1__ BlockChainStream ;



__attribute__((used)) static inline ULONG BlockChainStream_GetCount(BlockChainStream* This)
{
  return This->numBlocks;
}
