
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_9__ {int p_es_video; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_10__ {int i_pts; } ;
typedef TYPE_3__ block_t ;


 TYPE_3__* GrabVideo (TYPE_1__*) ;
 int VLC_HARD_MIN_SLEEP ;
 int es_out_Send (int ,int ,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;
 int vlc_tick_sleep (int ) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_blockv = ((void*)0);


    p_blockv = GrabVideo( p_demux );

    if( !p_blockv )
    {



        vlc_tick_sleep( VLC_HARD_MIN_SLEEP );
        return 1;
    }

    if( p_blockv )
    {
        es_out_SetPCR( p_demux->out, p_blockv->i_pts );
        es_out_Send( p_demux->out, p_sys->p_es_video, p_blockv );
    }
    return 1;
}
