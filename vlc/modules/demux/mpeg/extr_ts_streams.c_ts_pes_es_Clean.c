
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fmt; scalar_t__ id; } ;
typedef TYPE_1__ ts_es_t ;
struct TYPE_7__ {int out; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_8__ {int i_pmt_es; } ;
typedef TYPE_3__ demux_sys_t ;


 int ES_OUT_SET_ES_STATE ;
 int es_format_Clean (int *) ;
 int es_out_Control (int ,int ,scalar_t__,int) ;
 int es_out_Del (int ,scalar_t__) ;

__attribute__((used)) static void ts_pes_es_Clean( demux_t *p_demux, ts_es_t *p_es )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if( p_es->id )
    {

        es_out_Control( p_demux->out, ES_OUT_SET_ES_STATE, p_es->id, 0 );
        es_out_Del( p_demux->out, p_es->id );
        p_sys->i_pmt_es--;
    }
    es_format_Clean( &p_es->fmt );
}
