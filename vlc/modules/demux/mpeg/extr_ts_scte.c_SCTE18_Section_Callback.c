
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_19__ {TYPE_6__* p_eas_es; } ;
typedef TYPE_3__ ts_psip_t ;
struct TYPE_18__ {int i_current; int i_first; } ;
struct TYPE_20__ {TYPE_2__ pcr; } ;
typedef TYPE_4__ ts_pmt_t ;
struct TYPE_17__ {TYPE_3__* p_psip; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_5__ ts_pid_t ;
struct TYPE_22__ {scalar_t__ id; TYPE_4__* p_program; int fmt; struct TYPE_22__* p_next; } ;
typedef TYPE_6__ ts_es_t ;
typedef int stime_t ;
struct TYPE_23__ {scalar_t__ p_sys; } ;
typedef TYPE_7__ dvbpsi_t ;
struct TYPE_24__ {size_t p_payload_end; size_t p_payload_start; struct TYPE_24__* p_next; } ;
typedef TYPE_8__ dvbpsi_psi_section_t ;
struct TYPE_25__ {int out; } ;
typedef TYPE_9__ demux_t ;
struct TYPE_16__ {int i_pts; int i_dts; int p_buffer; } ;
typedef TYPE_10__ block_t ;


 int const EAS_PRIORITY_HIGH ;
 int const EAS_PRIORITY_MAX ;
 int ES_OUT_SET_ES_STATE ;
 int FROM_SCALE (int const) ;
 scalar_t__ TYPE_PSIP ;
 int TimeStampWrapAround (int ,int ) ;
 TYPE_10__* block_Alloc (size_t) ;
 scalar_t__ es_out_Add (int ,int *) ;
 int es_out_Control (int ,int ,scalar_t__,int) ;
 int es_out_Send (int ,scalar_t__,TYPE_10__*) ;
 int memcpy (int ,size_t,size_t) ;
 int msg_Dbg (TYPE_9__*,char*,int const) ;
 int scte18_get_EAS_priority (size_t,size_t) ;

void SCTE18_Section_Callback( dvbpsi_t *p_handle, const dvbpsi_psi_section_t* p_section,
                              void *p_base_pid )
{
    demux_t *p_demux = (demux_t *) p_handle->p_sys;
    ts_pid_t *p_pid = (ts_pid_t *) p_base_pid;
    ts_psip_t *p_psip = p_pid->u.p_psip;
    if( p_pid->type != TYPE_PSIP || !p_psip->p_eas_es )
        return;

    for( ; p_section; p_section = p_section->p_next )
    {
        size_t i_payload = p_section->p_payload_end - p_section->p_payload_start;
        const int i_priority = scte18_get_EAS_priority( p_section->p_payload_start, i_payload );
        msg_Dbg( p_demux, "Received EAS Alert with priority %d", i_priority );

        if( i_priority != EAS_PRIORITY_HIGH && i_priority != EAS_PRIORITY_MAX )
            continue;

        for( ts_es_t *p_es = p_psip->p_eas_es; p_es; p_es = p_es->p_next )
        {
            if( !p_es->id && !(p_es->id = es_out_Add( p_demux->out, &p_es->fmt )) )
                continue;

            const ts_pmt_t *p_pmt = p_es->p_program;
            const stime_t i_date = TimeStampWrapAround( p_pmt->pcr.i_first, p_pmt->pcr.i_current );
            block_t *p_block = block_Alloc( p_section->p_payload_end - p_section->p_payload_start );
            memcpy( p_block->p_buffer, p_section->p_payload_start, i_payload );
            p_block->i_dts = p_block->i_pts = FROM_SCALE( i_date );

            es_out_Control( p_demux->out, ES_OUT_SET_ES_STATE, p_es->id, 1 );
            es_out_Send( p_demux->out, p_es->id, p_block );
        }
    }
}
