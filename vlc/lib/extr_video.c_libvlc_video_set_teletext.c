
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_3__ {int * player; } ;
typedef TYPE_1__ libvlc_media_player_t ;


 int libvlc_printerr (char*) ;
 int libvlc_teletext_key_blue ;
 int libvlc_teletext_key_green ;
 int libvlc_teletext_key_index ;
 int libvlc_teletext_key_red ;
 int libvlc_teletext_key_yellow ;
 int vlc_player_Lock (int *) ;
 int vlc_player_SelectTeletextPage (int *,int) ;
 int vlc_player_SetTeletextEnabled (int *,int) ;
 int vlc_player_Unlock (int *) ;

void libvlc_video_set_teletext( libvlc_media_player_t *p_mi, int i_page )
{
    vlc_player_t *player = p_mi->player;
    vlc_player_Lock(player);

    if (i_page == 0)
        vlc_player_SetTeletextEnabled(player, 0);
    else if (i_page > 0)
    {
        if (i_page >= 1000)
        {
            bool is_key = i_page == libvlc_teletext_key_red
                       || i_page == libvlc_teletext_key_green
                       || i_page == libvlc_teletext_key_yellow
                       || i_page == libvlc_teletext_key_blue
                       || i_page == libvlc_teletext_key_index;
            if (!is_key)
            {
                libvlc_printerr("Invalid key action");
                return;
            }
        }
        vlc_player_SetTeletextEnabled(player, 1);
        vlc_player_SelectTeletextPage(player, i_page);
    }
    else
    {
        libvlc_printerr("Invalid page number");
        return;
    }

    vlc_player_Unlock(player);
}
