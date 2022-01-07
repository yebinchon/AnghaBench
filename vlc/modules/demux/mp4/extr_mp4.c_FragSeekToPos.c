
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_7__ {int i_timescale; int i_cumulated_duration; int i_duration; int b_fragments_probed; int b_seekable; } ;
typedef TYPE_2__ demux_sys_t ;


 int FragSeekToTime (TYPE_1__*,int ,int) ;
 double MP4_rescale_mtime (scalar_t__,int ) ;
 int ProbeFragmentsChecked (TYPE_1__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ __MAX (int ,int ) ;

__attribute__((used)) static int FragSeekToPos( demux_t *p_demux, double f, bool b_accurate )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if ( !p_sys->b_seekable || !p_sys->i_timescale )
        return VLC_EGENERIC;

    uint64_t i_duration = __MAX(p_sys->i_duration, p_sys->i_cumulated_duration);
    if( !i_duration && !p_sys->b_fragments_probed )
    {
        int i_ret = ProbeFragmentsChecked( p_demux );
        if( i_ret != VLC_SUCCESS )
            return i_ret;
        i_duration = __MAX(p_sys->i_duration, p_sys->i_cumulated_duration);
    }

    if( !i_duration )
        return VLC_EGENERIC;

    return FragSeekToTime( p_demux, (vlc_tick_t)( f *
                           MP4_rescale_mtime( i_duration, p_sys->i_timescale ) ), b_accurate );
}
