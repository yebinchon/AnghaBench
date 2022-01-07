
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vod_media_t ;
typedef scalar_t__ vlc_tick_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_7__ {scalar_t__ i_npt_zero; scalar_t__ i_pts_zero; int lock_ts; } ;
typedef TYPE_2__ sout_stream_sys_t ;
struct TYPE_8__ {TYPE_1__* p_stream; } ;
typedef TYPE_3__ sout_stream_id_sys_t ;


 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ rtp_init_ts (int const*,char const*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 scalar_t__ vlc_tick_now () ;

vlc_tick_t rtp_get_ts( const sout_stream_t *p_stream, const sout_stream_id_sys_t *id,
                    const vod_media_t *p_media, const char *psz_vod_session,
                    vlc_tick_t *p_npt )
{
    if (p_npt != ((void*)0))
        *p_npt = 0;

    if (id != ((void*)0))
        p_stream = id->p_stream;

    if (p_stream == ((void*)0))
        return rtp_init_ts(p_media, psz_vod_session);

    sout_stream_sys_t *p_sys = p_stream->p_sys;
    vlc_tick_t i_npt_zero;
    vlc_mutex_lock( &p_sys->lock_ts );
    i_npt_zero = p_sys->i_npt_zero;
    vlc_mutex_unlock( &p_sys->lock_ts );

    if( i_npt_zero == VLC_TICK_INVALID )
        return p_sys->i_pts_zero;

    vlc_tick_t now = vlc_tick_now();
    if( now < i_npt_zero )
        return p_sys->i_pts_zero;

    vlc_tick_t npt = now - i_npt_zero;
    if (p_npt != ((void*)0))
        *p_npt = npt;

    return p_sys->i_pts_zero + npt;
}
