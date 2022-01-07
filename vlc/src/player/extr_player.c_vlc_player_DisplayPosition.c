
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_input {int dummy; } ;


 int VLC_PLAYER_WHENCE_ABSOLUTE ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 int vlc_player_input_GetPos (struct vlc_player_input*) ;
 int vlc_player_input_GetTime (struct vlc_player_input*) ;
 int vlc_player_osd_Position (int *,struct vlc_player_input*,int ,int ,int ) ;

void
vlc_player_DisplayPosition(vlc_player_t *player)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    if (!input)
        return;
    vlc_player_osd_Position(player, input,
                                vlc_player_input_GetTime(input),
                                vlc_player_input_GetPos(input),
                                VLC_PLAYER_WHENCE_ABSOLUTE);
}
