
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_10__ {int i_last_output_frame; int cc; int lock; int pts; int framedrop; scalar_t__ i_late_frames; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_11__ {int i_flags; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int DecodeBlock (TYPE_1__*,TYPE_3__**) ;
 int FRAMEDROP_NONE ;
 int VLC_TICK_INVALID ;
 int block_Release (TYPE_3__*) ;
 int cc_Flush (int *) ;
 int date_Set (int *,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int DecodeVideo( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t **pp_block = p_block ? &p_block : ((void*)0) ;

    if( p_block &&
        p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY|BLOCK_FLAG_CORRUPTED) )
    {

        if( p_block->i_flags & BLOCK_FLAG_DISCONTINUITY )
            DecodeBlock( p_dec, ((void*)0) );
        p_sys->i_late_frames = 0;
        p_sys->i_last_output_frame = -1;
        p_sys->framedrop = FRAMEDROP_NONE;

        vlc_mutex_lock(&p_sys->lock);
        date_Set( &p_sys->pts, VLC_TICK_INVALID );
        vlc_mutex_unlock(&p_sys->lock);

        cc_Flush( &p_sys->cc );

        if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
        {
            block_Release( p_block );
            p_block = ((void*)0);
        }
    }

    return DecodeBlock( p_dec, pp_block );
}
