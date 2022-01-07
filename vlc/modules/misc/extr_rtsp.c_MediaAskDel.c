
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vod_t ;
typedef int vod_media_t ;


 int CommandPush (int *,int ,int *,int *,int ,double,int *) ;
 int RTSP_CMD_TYPE_DEL ;

__attribute__((used)) static void MediaAskDel ( vod_t *p_vod, vod_media_t *p_media )
{
    CommandPush( p_vod, RTSP_CMD_TYPE_DEL, p_media, ((void*)0), 0, 0.0, ((void*)0) );
}
