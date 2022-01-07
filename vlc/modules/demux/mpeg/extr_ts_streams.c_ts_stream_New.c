
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * p_head; int ** pp_last; } ;
struct TYPE_7__ {scalar_t__ i_saved; int * p_data; int ** pp_last; scalar_t__ i_gathered; scalar_t__ i_data_size; } ;
struct TYPE_9__ {int b_broken_PUSI_conformance; int b_always_receive; int i_last_dts; TYPE_2__ prepcr; int * p_proc; int * p_sections_proc; TYPE_1__ gather; int transport; scalar_t__ i_stream_type; int p_es; } ;
typedef TYPE_3__ ts_stream_t ;
typedef int ts_pmt_t ;
typedef int demux_t ;


 int TS_TRANSPORT_PES ;
 int VLC_UNUSED (int *) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (int) ;
 int ts_es_New (int *) ;

ts_stream_t *ts_stream_New( demux_t *p_demux, ts_pmt_t *p_program )
{
    VLC_UNUSED(p_demux);
    ts_stream_t *pes = malloc( sizeof( ts_stream_t ) );
    if( !pes )
        return ((void*)0);

    pes->p_es = ts_es_New( p_program );
    if( !pes->p_es )
    {
        free( pes );
        return ((void*)0);
    }
    pes->i_stream_type = 0;
    pes->transport = TS_TRANSPORT_PES;
    pes->gather.i_data_size = 0;
    pes->gather.i_gathered = 0;
    pes->gather.p_data = ((void*)0);
    pes->gather.pp_last = &pes->gather.p_data;
    pes->gather.i_saved = 0;
    pes->b_broken_PUSI_conformance = 0;
    pes->b_always_receive = 0;
    pes->p_sections_proc = ((void*)0);
    pes->p_proc = ((void*)0);
    pes->prepcr.p_head = ((void*)0);
    pes->prepcr.pp_last = &pes->prepcr.p_head;
    pes->i_last_dts = -1;

    return pes;
}
