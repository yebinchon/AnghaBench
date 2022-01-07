
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_title_list {int dummy; } ;
struct vlc_player_input {struct vlc_player_title_list* titles; } ;


 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

struct vlc_player_title_list *
vlc_player_GetTitleList(vlc_player_t *player)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    return input ? input->titles : ((void*)0);
}
