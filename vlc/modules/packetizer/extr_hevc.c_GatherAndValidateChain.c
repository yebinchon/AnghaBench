
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int i_flags; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_DROP ;
 TYPE_1__* block_ChainGather (TYPE_1__*) ;
 int block_ChainRelease (TYPE_1__*) ;

__attribute__((used)) static block_t *GatherAndValidateChain(block_t *p_outputchain)
{
    block_t *p_output = ((void*)0);

    if(p_outputchain)
    {
        if(p_outputchain->i_flags & BLOCK_FLAG_DROP)
            p_output = p_outputchain;
        else
            p_output = block_ChainGather(p_outputchain);
    }

    if(p_output && (p_output->i_flags & BLOCK_FLAG_DROP))
    {
        block_ChainRelease(p_output);
        p_output = ((void*)0);
    }

    return p_output;
}
