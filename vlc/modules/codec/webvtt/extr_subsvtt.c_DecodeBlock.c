
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_12__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_13__ {TYPE_1__* p_root; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_14__ {int i_flags; int i_buffer; int p_buffer; scalar_t__ i_length; scalar_t__ i_pts; } ;
typedef TYPE_4__ block_t ;
struct TYPE_11__ {int p_child; } ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int ClearCuesByTime (int *,scalar_t__) ;
 int Flush (TYPE_2__*) ;
 int ProcessISOBMFF (TYPE_2__*,int ,int ,scalar_t__,scalar_t__) ;
 int Render (TYPE_2__*,scalar_t__,scalar_t__) ;
 int VLCDEC_SUCCESS ;
 scalar_t__ VLC_TICK_0 ;
 int block_Release (TYPE_4__*) ;

__attribute__((used)) static int DecodeBlock( decoder_t *p_dec, block_t *p_block )
{
    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;

    decoder_sys_t *p_sys = p_dec->p_sys;

    vlc_tick_t i_start = p_block->i_pts - VLC_TICK_0;
    vlc_tick_t i_stop = i_start + p_block->i_length;

    if( p_block->i_flags & BLOCK_FLAG_DISCONTINUITY )
        Flush( p_dec );
    else
        ClearCuesByTime( &p_sys->p_root->p_child, i_start );

    ProcessISOBMFF( p_dec, p_block->p_buffer, p_block->i_buffer,
                    i_start, i_stop );

    Render( p_dec, i_start, i_stop );

    block_Release( p_block );
    return VLCDEC_SUCCESS;
}
