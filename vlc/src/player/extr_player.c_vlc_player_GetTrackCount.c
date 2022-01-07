
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; } ;
typedef TYPE_1__ vlc_player_track_vector ;
typedef int vlc_player_t ;
struct vlc_player_input {int dummy; } ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 TYPE_1__* vlc_player_input_GetTrackVector (struct vlc_player_input*,int) ;

size_t
vlc_player_GetTrackCount(vlc_player_t *player, enum es_format_category_e cat)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    if (!input)
        return 0;
    vlc_player_track_vector *vec = vlc_player_input_GetTrackVector(input, cat);
    if (!vec)
        return 0;
    return vec->size;
}
