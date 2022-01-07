
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_13__ {int * p_chain; } ;
struct TYPE_14__ {int pp_chain_last; } ;
struct TYPE_16__ {TYPE_1__ frame; int b_recovery_point; int sets; TYPE_2__ post; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_17__ {int i_buffer; int p_buffer; int i_flags; } ;
typedef TYPE_5__ block_t ;


 int BLOCK_FLAG_END_OF_SEQUENCE ;



 int HxxxParse_AnnexB_SEI (int ,int ,int,int ,TYPE_3__*) ;
 int MISSING ;
 TYPE_5__* OutputQueues (TYPE_4__*,int) ;
 int ParseSEICallback ;
 int block_ChainLastAppend (int *,TYPE_5__*) ;

__attribute__((used)) static block_t * ParseAUTail(decoder_t *p_dec, uint8_t i_nal_type, block_t *p_nalb)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_ret = ((void*)0);

    block_ChainLastAppend(&p_sys->post.pp_chain_last, p_nalb);

    switch(i_nal_type)
    {
        case 129:
        case 130:
            p_ret = OutputQueues(p_sys, p_sys->sets != MISSING &&
                                        p_sys->b_recovery_point);
            if( p_ret )
                p_ret->i_flags |= BLOCK_FLAG_END_OF_SEQUENCE;
            break;

        case 128:
            HxxxParse_AnnexB_SEI( p_nalb->p_buffer, p_nalb->i_buffer,
                                  2 , ParseSEICallback, p_dec );
            break;
    }

    if(!p_ret && p_sys->frame.p_chain == ((void*)0))
        p_ret = OutputQueues(p_sys, 0);

    return p_ret;
}
