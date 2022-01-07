
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef double uint64_t ;
struct TYPE_4__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {scalar_t__ i_length; scalar_t__ i_time; } ;
typedef TYPE_2__ demux_sys_t ;


 double stream_Size (int ) ;
 int vlc_stream_Tell (int ) ;

__attribute__((used)) static double ControlGetPosition( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if( p_sys->i_length != 0 )
    {
        return (double)p_sys->i_time / (double)p_sys->i_length;
    }
    else if( stream_Size( p_demux->s ) > 0 )
    {
        double i64 = (uint64_t)vlc_stream_Tell( p_demux->s );
        return i64 / stream_Size( p_demux->s );
    }
    return 0.0;
}
