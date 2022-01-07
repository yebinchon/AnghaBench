
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fov; int roll; int pitch; int yaw; } ;
typedef TYPE_1__ vlc_viewpoint_t ;
struct TYPE_8__ {int f_field_of_view; int f_roll; int f_pitch; int f_yaw; } ;
typedef TYPE_2__ libvlc_video_viewpoint_t ;
struct TYPE_9__ {int player; } ;
typedef TYPE_3__ libvlc_media_player_t ;
typedef enum vlc_player_whence { ____Placeholder_vlc_player_whence } vlc_player_whence ;


 int VLC_PLAYER_WHENCE_ABSOLUTE ;
 int VLC_PLAYER_WHENCE_RELATIVE ;
 int vlc_player_UpdateViewpoint (int ,TYPE_1__*,int) ;

int libvlc_video_update_viewpoint( libvlc_media_player_t *p_mi,
                                   const libvlc_video_viewpoint_t *p_viewpoint,
                                   bool b_absolute )
{
    vlc_viewpoint_t update = {
        .yaw = p_viewpoint->f_yaw,
        .pitch = p_viewpoint->f_pitch,
        .roll = p_viewpoint->f_roll,
        .fov = p_viewpoint->f_field_of_view,
    };

    enum vlc_player_whence whence = b_absolute ? VLC_PLAYER_WHENCE_ABSOLUTE
                                               : VLC_PLAYER_WHENCE_RELATIVE;
    vlc_player_UpdateViewpoint(p_mi->player, &update, whence);


    return 0;
}
