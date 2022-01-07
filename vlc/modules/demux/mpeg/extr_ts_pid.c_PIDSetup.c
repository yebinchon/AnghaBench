
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ts_pid_type_t ;
struct TYPE_6__ {int p_psip; int p_si; int p_stream; int p_pmt; int p_pat; } ;
struct TYPE_7__ {int i_pid; scalar_t__ i_refcount; int type; TYPE_1__ u; } ;
typedef TYPE_2__ ts_pid_t ;
typedef int demux_t ;


 int PIDReset (TYPE_2__*) ;







 scalar_t__ UINT16_MAX ;
 int assert (int) ;
 int msg_Warn (int *,char*,int) ;
 int ts_pat_New (int *) ;
 int ts_pmt_New (int *) ;
 int ts_psip_New (int *) ;
 int ts_si_New (int *) ;
 int ts_stream_New (int *,int ) ;

bool PIDSetup( demux_t *p_demux, ts_pid_type_t i_type, ts_pid_t *pid, ts_pid_t *p_parent )
{
    if( pid == p_parent || pid->i_pid == 0x1FFF )
        return 0;

    if( pid->i_refcount == 0 )
    {
        assert( pid->type == 133 );
        switch( i_type )
        {
        case 133:
            PIDReset( pid );
            return 1;

        case 134:
            return 1;

        case 132:
            PIDReset( pid );
            pid->u.p_pat = ts_pat_New( p_demux );
            if( !pid->u.p_pat )
                return 0;
            break;

        case 131:
            PIDReset( pid );
            pid->u.p_pmt = ts_pmt_New( p_demux );
            if( !pid->u.p_pmt )
                return 0;
            break;

        case 128:
            PIDReset( pid );
            pid->u.p_stream = ts_stream_New( p_demux, p_parent->u.p_pmt );
            if( !pid->u.p_stream )
                return 0;
            break;

        case 129:
            PIDReset( pid );
            pid->u.p_si = ts_si_New( p_demux );
            if( !pid->u.p_si )
                return 0;
            break;

        case 130:
            PIDReset( pid );
            pid->u.p_psip = ts_psip_New( p_demux );
            if( !pid->u.p_psip )
                return 0;
            break;

        default:
            assert(0);
            break;
        }

        pid->i_refcount++;
        pid->type = i_type;
    }
    else if( pid->type == i_type && pid->i_refcount < UINT16_MAX )
    {
        pid->i_refcount++;
    }
    else
    {
        if( pid->type != 133 )
            msg_Warn( p_demux, "Tried to redeclare pid %d with another type", pid->i_pid );
        return 0;
    }

    return 1;
}
