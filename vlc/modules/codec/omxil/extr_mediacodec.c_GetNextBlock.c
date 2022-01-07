
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_csd_send; scalar_t__ i_csd_count; int ** pp_csd; } ;
typedef TYPE_1__ decoder_sys_t ;
typedef int block_t ;



__attribute__((used)) static block_t *GetNextBlock(decoder_sys_t *p_sys, block_t *p_block)
{
    if (p_sys->i_csd_send < p_sys->i_csd_count)
        return p_sys->pp_csd[p_sys->i_csd_send++];
    else
        return p_block;
}
