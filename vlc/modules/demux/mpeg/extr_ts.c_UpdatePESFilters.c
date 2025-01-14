
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_22__ {int p_es; int b_always_receive; } ;
typedef TYPE_4__ ts_stream_t ;
struct TYPE_20__ {int i_size; TYPE_6__** p_elems; } ;
struct TYPE_23__ {scalar_t__ i_pid_pcr; int b_selected; TYPE_2__ e_streams; int i_number; } ;
typedef TYPE_5__ ts_pmt_t ;
struct TYPE_21__ {TYPE_4__* p_stream; TYPE_5__* p_pmt; TYPE_7__* p_pat; } ;
struct TYPE_24__ {int i_flags; scalar_t__ i_pid; TYPE_3__ u; } ;
typedef TYPE_6__ ts_pid_t ;
struct TYPE_19__ {int i_size; TYPE_6__** p_elems; } ;
struct TYPE_25__ {TYPE_1__ programs; } ;
typedef TYPE_7__ ts_pat_t ;
struct TYPE_26__ {int out; TYPE_9__* p_sys; } ;
typedef TYPE_8__ demux_t ;
struct TYPE_27__ {int b_access_control; scalar_t__ b_default_selection; } ;
typedef TYPE_9__ demux_sys_t ;


 int FLAG_FILTERED ;
 int FlushESBuffer (TYPE_4__*) ;
 TYPE_6__* GetPID (TYPE_9__*,scalar_t__) ;
 int HasSelectedES (int ,int ,TYPE_5__*,int*) ;
 int ProgramIsSelected (TYPE_9__*,int ) ;
 int UpdateHWFilter (TYPE_9__*,TYPE_6__*) ;
 int msg_Dbg (TYPE_8__*,char*,scalar_t__,int ) ;

void UpdatePESFilters( demux_t *p_demux, bool b_all )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    ts_pat_t *p_pat = GetPID(p_sys, 0)->u.p_pat;
    for( int i=0; i< p_pat->programs.i_size; i++ )
    {
        ts_pid_t *p_pmt_pid = p_pat->programs.p_elems[i];
        ts_pmt_t *p_pmt = p_pmt_pid->u.p_pmt;

        p_pmt_pid->i_flags &= ~FLAG_FILTERED;
        for( int j=0; j< p_pmt->e_streams.i_size; j++ )
            p_pmt->e_streams.p_elems[j]->i_flags &= ~FLAG_FILTERED;
        GetPID(p_sys, p_pmt->i_pid_pcr)->i_flags &= ~FLAG_FILTERED;
    }


    for( int i=0; i< p_pat->programs.i_size; i++ )
    {
        ts_pid_t *p_pmt_pid = p_pat->programs.p_elems[i];
        ts_pmt_t *p_pmt = p_pmt_pid->u.p_pmt;

        if( (p_sys->b_default_selection && !p_sys->b_access_control) || b_all )
             p_pmt->b_selected = 1;
        else
             p_pmt->b_selected = ProgramIsSelected( p_sys, p_pmt->i_number );

        if( p_pmt->b_selected )
        {
            p_pmt_pid->i_flags |= FLAG_FILTERED;

            for( int j=0; j<p_pmt->e_streams.i_size; j++ )
            {
                ts_pid_t *espid = p_pmt->e_streams.p_elems[j];
                ts_stream_t *p_pes = espid->u.p_stream;

                bool b_stream_selected = 1;
                if( !p_pes->b_always_receive && !b_all )
                    HasSelectedES( p_demux->out, p_pes->p_es, p_pmt, &b_stream_selected );

                if( b_stream_selected )
                {
                    msg_Dbg( p_demux, "enabling pid %d from program %d", espid->i_pid, p_pmt->i_number );
                    espid->i_flags |= FLAG_FILTERED;
                }
            }


            if( p_pmt->i_pid_pcr > 0 )
            {
                GetPID(p_sys, p_pmt->i_pid_pcr)->i_flags |= FLAG_FILTERED;
                msg_Dbg( p_demux, "enabling pcr pid %d from program %d", p_pmt->i_pid_pcr, p_pmt->i_number );
            }
        }
    }


    for( int i=0; i< p_pat->programs.i_size; i++ )
    {
        ts_pid_t *p_pmt_pid = p_pat->programs.p_elems[i];
        ts_pmt_t *p_pmt = p_pmt_pid->u.p_pmt;

        UpdateHWFilter( p_sys, p_pmt_pid );
        for( int j=0; j< p_pmt->e_streams.i_size; j++ )
        {
            ts_pid_t *espid = p_pmt->e_streams.p_elems[j];
            UpdateHWFilter( p_sys, espid );
            if( (espid->i_flags & FLAG_FILTERED) == 0 )
                FlushESBuffer( espid->u.p_stream );
        }
        UpdateHWFilter( p_sys, GetPID(p_sys, p_pmt->i_pid_pcr) );
    }
}
