
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int es_out_id_t ;
struct TYPE_8__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_9__ {int * p_es_audio; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_10__ {int i_pts; } ;
typedef TYPE_3__ block_t ;


 TYPE_3__* GrabJack (TYPE_1__*) ;
 int es_out_Send (int ,int *,TYPE_3__*) ;
 int es_out_SetPCR (int ,int ) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    demux_sys_t *p_sys;
    es_out_id_t *p_es;
    block_t *p_block;

    p_sys = p_demux->p_sys;
    p_es = p_sys->p_es_audio;
    p_block = GrabJack( p_demux );

    if( p_block )
    {
        es_out_SetPCR( p_demux->out, p_block->i_pts );
        es_out_Send( p_demux->out, p_es, p_block );
    }

    return 1;
}
