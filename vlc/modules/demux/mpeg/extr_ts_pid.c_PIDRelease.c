
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int * p_psip; int * p_si; int * p_stream; int * p_pmt; int * p_pat; } ;
struct TYPE_14__ {int i_refcount; scalar_t__ type; TYPE_1__ u; } ;
typedef TYPE_2__ ts_pid_t ;
struct TYPE_15__ {int p_sys; } ;
typedef TYPE_3__ demux_t ;


 int PIDReset (TYPE_2__*) ;
 int SetPIDFilter (int ,TYPE_2__*,int) ;







 int assert (int) ;
 int ts_pat_Del (TYPE_3__*,int *) ;
 int ts_pmt_Del (TYPE_3__*,int *) ;
 int ts_psip_Del (TYPE_3__*,int *) ;
 int ts_si_Del (TYPE_3__*,int *) ;
 int ts_stream_Del (TYPE_3__*,int *) ;

void PIDRelease( demux_t *p_demux, ts_pid_t *pid )
{
    if( pid->i_refcount == 0 )
    {
        assert( pid->type == 133 );
        return;
    }
    else if( pid->i_refcount == 1 )
    {
        pid->i_refcount--;
    }
    else if( pid->i_refcount > 1 )
    {
        assert( pid->type != 133 && pid->type != 132 );
        pid->i_refcount--;
    }

    if( pid->i_refcount == 0 )
    {
        switch( pid->type )
        {
        default:
        case 133:
            assert( pid->type != 133 );
            break;

        case 134:
            break;

        case 132:
            ts_pat_Del( p_demux, pid->u.p_pat );
            pid->u.p_pat = ((void*)0);
            break;

        case 131:
            ts_pmt_Del( p_demux, pid->u.p_pmt );
            pid->u.p_pmt = ((void*)0);
            break;

        case 128:
            ts_stream_Del( p_demux, pid->u.p_stream );
            pid->u.p_stream = ((void*)0);
            break;

        case 129:
            ts_si_Del( p_demux, pid->u.p_si );
            pid->u.p_si = ((void*)0);
            break;

        case 130:
            ts_psip_Del( p_demux, pid->u.p_psip );
            pid->u.p_psip = ((void*)0);
            break;
        }

        SetPIDFilter( p_demux->p_sys, pid, 0 );
        PIDReset( pid );
    }
}
