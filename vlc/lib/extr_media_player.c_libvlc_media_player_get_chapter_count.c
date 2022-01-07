
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_title {scalar_t__ chapter_count; } ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 struct vlc_player_title* vlc_player_GetSelectedTitle (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;

int libvlc_media_player_get_chapter_count( libvlc_media_player_t *p_mi )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    const struct vlc_player_title *title = vlc_player_GetSelectedTitle(player);
    int ret = title ? (int) title->chapter_count : -1;

    vlc_player_Unlock(player);
    return ret;
}
