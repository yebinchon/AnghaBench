
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * p_blocks; int ** pp_append; } ;
struct TYPE_7__ {scalar_t__ i_prev_blocksize; } ;
struct TYPE_8__ {TYPE_1__ vorbis; } ;
struct TYPE_10__ {scalar_t__ i_codec; } ;
struct TYPE_11__ {int b_reinit; int b_interpolation_failed; TYPE_3__ queue; int os; int dts; scalar_t__ i_next_block_flags; int i_pcr; TYPE_2__ special; TYPE_4__ fmt; } ;
typedef TYPE_5__ logical_stream_t ;


 scalar_t__ VLC_CODEC_VORBIS ;
 int VLC_TICK_INVALID ;
 int block_ChainRelease (int *) ;
 int date_Set (int *,int ) ;
 int ogg_stream_reset (int *) ;

__attribute__((used)) static void Ogg_ResetStream( logical_stream_t *p_stream )
{







    p_stream->b_reinit = 1;
    p_stream->i_pcr = VLC_TICK_INVALID;
    p_stream->i_next_block_flags = 0;
    p_stream->b_interpolation_failed = 0;
    date_Set( &p_stream->dts, VLC_TICK_INVALID );
    ogg_stream_reset( &p_stream->os );
    block_ChainRelease( p_stream->queue.p_blocks );
    p_stream->queue.p_blocks = ((void*)0);
    p_stream->queue.pp_append = &p_stream->queue.p_blocks;
}
