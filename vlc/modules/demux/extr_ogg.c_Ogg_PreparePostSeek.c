
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_streams; int i_pcr; int oy; TYPE_2__** pp_stream; } ;
typedef TYPE_1__ demux_sys_t ;
struct TYPE_5__ {int i_next_block_flags; } ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int Ogg_ResetStream (TYPE_2__*) ;
 int VLC_TICK_INVALID ;
 int ogg_sync_reset (int *) ;

__attribute__((used)) static void Ogg_PreparePostSeek( demux_sys_t *p_sys )
{
    for( int i = 0; i < p_sys->i_streams; i++ )
    {
        Ogg_ResetStream( p_sys->pp_stream[i] );
        p_sys->pp_stream[i]->i_next_block_flags = BLOCK_FLAG_DISCONTINUITY;
    }

    ogg_sync_reset( &p_sys->oy );
    p_sys->i_pcr = VLC_TICK_INVALID;
}
