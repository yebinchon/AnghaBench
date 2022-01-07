
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_vod; } ;
typedef TYPE_1__ vod_media_t ;


 int CommandPush (int ,int ,TYPE_1__*,char const*) ;
 int RTSP_CMD_TYPE_STOP ;

void vod_stop(vod_media_t *p_media, const char *psz_session)
{
    CommandPush(p_media->p_vod, RTSP_CMD_TYPE_STOP, p_media, psz_session);
}
