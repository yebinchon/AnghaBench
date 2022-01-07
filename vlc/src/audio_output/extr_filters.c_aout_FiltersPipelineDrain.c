
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filter_t ;
typedef int block_t ;


 int * aout_FiltersPipelinePlay (int * const*,unsigned int,int *) ;
 int block_ChainAppend (int **,int *) ;
 int * block_ChainGather (int *) ;
 int * filter_DrainAudio (int *) ;

__attribute__((used)) static block_t *aout_FiltersPipelineDrain(filter_t *const *filters,
                                          unsigned count)
{
    block_t *chain = ((void*)0);

    for (unsigned i = 0; i < count; i++)
    {
        filter_t *filter = filters[i];

        block_t *block = filter_DrainAudio (filter);
        if (block)
        {


            if (i + 1 < count)
                block = aout_FiltersPipelinePlay (&filters[i + 1],
                                                  count - i - 1, block);
            if (block)
                block_ChainAppend (&chain, block);
        }
    }

    if (chain)
        return block_ChainGather(chain);
    else
        return ((void*)0);
}
