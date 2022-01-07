
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_vod; } ;
typedef TYPE_1__ vod_media_t ;
typedef int int64_t ;


 int VOD_MEDIA_PAUSE ;
 int vod_MediaControl (int ,TYPE_1__*,char const*,int ,int *) ;

void vod_pause(vod_media_t *p_media, const char *psz_session, int64_t *npt)
{
    vod_MediaControl(p_media->p_vod, p_media, psz_session,
                     VOD_MEDIA_PAUSE, npt);
}
