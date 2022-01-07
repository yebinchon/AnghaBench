
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vod_media_t ;
typedef uintptr_t vlc_tick_t ;
typedef uintptr_t uint64_t ;


 int __MIN (size_t,int) ;
 int memcpy (uintptr_t*,char const*,int ) ;
 size_t strlen (char const*) ;
 uintptr_t vlc_tick_now () ;

__attribute__((used)) static vlc_tick_t rtp_init_ts( const vod_media_t *p_media,
                            const char *psz_vod_session )
{
    if (p_media == ((void*)0) || psz_vod_session == ((void*)0))
        return vlc_tick_now();

    uint64_t i_ts_init = 0;

    size_t session_length = strlen(psz_vod_session);
    memcpy(&i_ts_init, psz_vod_session, __MIN(session_length,
                                              sizeof(uint64_t)));
    i_ts_init ^= (uintptr_t)p_media;


    i_ts_init &= 0xFFFFFFFFFFFF;
    return i_ts_init;
}
