
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_input {int teletext_menu; scalar_t__ teletext_enabled; } ;


 int assert (int ) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

bool
vlc_player_IsTeletextEnabled(vlc_player_t *player)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    if (input && input->teletext_enabled)
    {
        assert(input->teletext_menu);
        return 1;
    }
    return 0;
}
