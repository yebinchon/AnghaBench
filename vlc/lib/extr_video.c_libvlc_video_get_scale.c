
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;


 scalar_t__ var_GetBool (int *,char*) ;
 float var_GetFloat (int *,char*) ;

float libvlc_video_get_scale( libvlc_media_player_t *mp )
{
    float f_scale = var_GetFloat (mp, "zoom");
    if (var_GetBool (mp, "autoscale"))
        f_scale = 0.f;
    return f_scale;
}
