
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int block_t ;
struct TYPE_9__ {int count; scalar_t__ resampling; TYPE_4__* resampler; TYPE_4__** tab; } ;
typedef TYPE_3__ aout_filters_t ;
struct TYPE_7__ {int i_rate; } ;
struct TYPE_8__ {TYPE_1__ audio; } ;
struct TYPE_10__ {TYPE_2__ fmt_in; } ;


 int * aout_FiltersPipelineDrain (TYPE_4__**,int) ;
 int * aout_FiltersPipelinePlay (TYPE_4__**,int,int *) ;
 int block_ChainAppend (int **,int *) ;
 int * block_ChainGather (int *) ;

block_t *aout_FiltersDrain (aout_filters_t *filters)
{

    block_t *block = aout_FiltersPipelineDrain (filters->tab, filters->count);

    if (filters->resampler != ((void*)0))
    {
        block_t *chain = ((void*)0);

        filters->resampler->fmt_in.audio.i_rate += filters->resampling;

        if (block)
        {

            block = aout_FiltersPipelinePlay (&filters->resampler, 1, block);
            if (block)
                block_ChainAppend (&chain, block);
        }


        block = aout_FiltersPipelineDrain (&filters->resampler, 1);
        if (block)
            block_ChainAppend (&chain, block);

        filters->resampler->fmt_in.audio.i_rate -= filters->resampling;

        return chain ? block_ChainGather (chain) : ((void*)0);
    }
    else
        return block;
}
