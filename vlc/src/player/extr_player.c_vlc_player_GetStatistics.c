
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct input_stats_t {int dummy; } ;
struct vlc_player_input {struct input_stats_t const stats; } ;


 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

const struct input_stats_t *
vlc_player_GetStatistics(vlc_player_t *player)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    return input ? &input->stats : ((void*)0);
}
