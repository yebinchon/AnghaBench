
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int vlc_player_t ;
typedef int vlc_es_id_t ;
struct vlc_player_track_priv {int delay; } ;
struct vlc_player_input {int dummy; } ;


 int INT64_MAX ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 struct vlc_player_track_priv* vlc_player_input_FindTrackById (struct vlc_player_input*,int *,int *) ;

vlc_tick_t
vlc_player_GetEsIdDelay(vlc_player_t *player, vlc_es_id_t *es_id)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    if (!input)
        return 0;

    struct vlc_player_track_priv *trackpriv =
        vlc_player_input_FindTrackById(input, es_id, ((void*)0));
    return trackpriv ? trackpriv->delay : INT64_MAX;
}
