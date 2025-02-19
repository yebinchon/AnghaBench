
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_12__ {int input_stream_id; int output_stream_id; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_13__ {int i_flags; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 scalar_t__ ProcessInputStream (TYPE_1__*,int ,TYPE_3__*) ;
 scalar_t__ ProcessOutputStream (TYPE_1__*,int ) ;
 int VLCDEC_SUCCESS ;
 int block_Release (TYPE_3__*) ;
 int msg_Err (TYPE_1__*,char*) ;

__attribute__((used)) static int DecodeSync(decoder_t *p_dec, block_t *p_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if (!p_block)
        return VLCDEC_SUCCESS;

    if (p_block->i_flags & (BLOCK_FLAG_CORRUPTED))
    {
        block_Release(p_block);
        return VLCDEC_SUCCESS;
    }


    if (ProcessOutputStream(p_dec, p_sys->output_stream_id))
        goto error;
    if (ProcessInputStream(p_dec, p_sys->input_stream_id, p_block))
        goto error;
    block_Release(p_block);

    return VLCDEC_SUCCESS;

error:
    msg_Err(p_dec, "Error in DecodeSync()");
    block_Release(p_block);
    return VLCDEC_SUCCESS;
}
