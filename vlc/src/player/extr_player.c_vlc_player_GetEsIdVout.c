
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int vlc_player_t ;
typedef int vlc_es_id_t ;
struct vlc_player_track_priv {int vout_order; int * vout; } ;
typedef enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;


 struct vlc_player_track_priv* vlc_player_GetPrivTrack (int *,int *) ;

vout_thread_t *
vlc_player_GetEsIdVout(vlc_player_t *player, vlc_es_id_t *es_id,
                       enum vlc_vout_order *order)
{
    struct vlc_player_track_priv *trackpriv =
        vlc_player_GetPrivTrack(player, es_id);
    if (trackpriv)
    {
        if (order)
            *order = trackpriv->vout_order;
        return trackpriv->vout;
    }
    return ((void*)0);
}
