
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_flags; } ;
typedef TYPE_1__ ts_pid_t ;
typedef int demux_sys_t ;


 int FLAG_FILTERED ;
 int UpdateHWFilter (int *,TYPE_1__*) ;

int SetPIDFilter( demux_sys_t *p_sys, ts_pid_t *p_pid, bool b_selected )
{
    if( b_selected )
        p_pid->i_flags |= FLAG_FILTERED;
    else
        p_pid->i_flags &= ~FLAG_FILTERED;

    return UpdateHWFilter( p_sys, p_pid );
}
