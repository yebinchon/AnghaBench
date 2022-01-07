
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_flags; int i_pid; } ;
typedef TYPE_1__ ts_pid_t ;
struct TYPE_6__ {int stream; int b_access_control; } ;
typedef TYPE_2__ demux_sys_t ;


 int FLAG_FILTERED ;
 int STREAM_SET_PRIVATE_ID_STATE ;
 int VLC_EGENERIC ;
 int vlc_stream_Control (int ,int ,int ,int) ;

int UpdateHWFilter( demux_sys_t *p_sys, ts_pid_t *p_pid )
{
    if( !p_sys->b_access_control )
        return VLC_EGENERIC;

    return vlc_stream_Control( p_sys->stream, STREAM_SET_PRIVATE_ID_STATE,
                           p_pid->i_pid, !!(p_pid->i_flags & FLAG_FILTERED) );
}
