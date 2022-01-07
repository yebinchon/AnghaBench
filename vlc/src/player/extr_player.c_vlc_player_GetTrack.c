
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int vlc_es_id_t ;
struct vlc_player_track {int dummy; } ;
struct vlc_player_track_priv {struct vlc_player_track const t; } ;


 struct vlc_player_track_priv* vlc_player_GetPrivTrack (int *,int *) ;

const struct vlc_player_track *
vlc_player_GetTrack(vlc_player_t *player, vlc_es_id_t *id)
{
    struct vlc_player_track_priv *trackpriv =
        vlc_player_GetPrivTrack(player, id);
    return trackpriv ? &trackpriv->t : ((void*)0);
}
