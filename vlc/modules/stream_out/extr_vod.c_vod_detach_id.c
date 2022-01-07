
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rtsp; } ;
typedef TYPE_1__ vod_media_t ;
typedef int sout_stream_id_sys_t ;


 int RtspTrackDetach (int ,char const*,int *) ;

void vod_detach_id(vod_media_t *p_media, const char *psz_session,
                   sout_stream_id_sys_t *sout_id)
{
    RtspTrackDetach(p_media->rtsp, psz_session, sout_id);
}
