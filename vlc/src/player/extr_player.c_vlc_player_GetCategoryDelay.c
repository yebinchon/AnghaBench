
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int vlc_player_t ;
struct vlc_player_input {int * cat_delays; } ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 int AUDIO_ES ;
 int SPU_ES ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;

vlc_tick_t
vlc_player_GetCategoryDelay(vlc_player_t *player, enum es_format_category_e cat)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    if (!input)
        return 0;

    if (cat != AUDIO_ES && cat != SPU_ES)
        return 0;

    return input->cat_delays[cat];
}
