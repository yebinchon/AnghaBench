
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * (* pf_audio_filter ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ filter_t ;
typedef int block_t ;


 int * stub1 (TYPE_1__*,int *) ;

__attribute__((used)) static block_t *aout_FiltersPipelinePlay(filter_t *const *filters,
                                         unsigned count, block_t *block)
{

    for (unsigned i = 0; (i < count) && (block != ((void*)0)); i++)
    {
        filter_t *filter = filters[i];



        block = filter->pf_audio_filter (filter, block);
    }
    return block;
}
