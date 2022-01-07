
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_input {int teletext_page; } ;


 scalar_t__ vlc_player_IsTeletextEnabled (int *) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

unsigned
vlc_player_GetTeletextPage(vlc_player_t *player)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    return vlc_player_IsTeletextEnabled(player) ? input->teletext_page : 0;
}
