
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vlc_block_callbacks {int dummy; } ;
struct TYPE_4__ {size_t i_buffer; size_t i_size; struct vlc_block_callbacks const* cbs; scalar_t__ i_length; int i_dts; int i_pts; scalar_t__ i_nb_samples; scalar_t__ i_flags; void* p_start; void* p_buffer; int * p_next; } ;
typedef TYPE_1__ block_t ;


 int VLC_TICK_INVALID ;

block_t *block_Init(block_t *restrict b, const struct vlc_block_callbacks *cbs,
                    void *buf, size_t size)
{

    b->p_next = ((void*)0);
    b->p_buffer = buf;
    b->i_buffer = size;
    b->p_start = buf;
    b->i_size = size;
    b->i_flags = 0;
    b->i_nb_samples = 0;
    b->i_pts =
    b->i_dts = VLC_TICK_INVALID;
    b->i_length = 0;
    b->cbs = cbs;
    return b;
}
