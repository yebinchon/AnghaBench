
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_player_track {int selected; int fmt; int name; int es_id; } ;
struct vlc_player_track_priv {struct vlc_player_track t; } ;


 struct vlc_player_track_priv* vlc_player_track_priv_New (int ,int ,int *) ;

struct vlc_player_track *
vlc_player_track_Dup(const struct vlc_player_track *src)
{
    struct vlc_player_track_priv *duppriv =
        vlc_player_track_priv_New(src->es_id, src->name, &src->fmt);

    if (!duppriv)
        return ((void*)0);
    duppriv->t.selected = src->selected;
    return &duppriv->t;
}
