
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int SmallBlockChainStream ;


 scalar_t__ BLOCK_END_OF_CHAIN ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ SmallBlockChainStream_GetHeadOfChain (int *) ;
 int SmallBlockChainStream_GetNextBlockInChain (int *,scalar_t__,scalar_t__*) ;

__attribute__((used)) static ULONG SmallBlockChainStream_GetCount(SmallBlockChainStream* This)
{
    ULONG blockIndex;
    ULONG count = 0;

    blockIndex = SmallBlockChainStream_GetHeadOfChain(This);

    while(blockIndex != BLOCK_END_OF_CHAIN)
    {
        count++;

        if(FAILED(SmallBlockChainStream_GetNextBlockInChain(This,
                        blockIndex, &blockIndex)))
            return 0;
    }

    return count;
}
