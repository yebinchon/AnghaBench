
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_vod; } ;
typedef TYPE_1__ vod_media_t ;
typedef int int64_t ;


 scalar_t__ VLC_SUCCESS ;
 int VOD_MEDIA_PLAY ;
 int vod_MediaControl (int ,TYPE_1__*,char const*,int ,char*,int *) ;
 scalar_t__ vod_check_range (TYPE_1__*,char const*,int ,int ) ;

void vod_play(vod_media_t *p_media, const char *psz_session,
              int64_t *start, int64_t end)
{
    if (vod_check_range(p_media, psz_session, *start, end) != VLC_SUCCESS)
        return;


    vod_MediaControl(p_media->p_vod, p_media, psz_session,
                     VOD_MEDIA_PLAY, "vod", start);
}
