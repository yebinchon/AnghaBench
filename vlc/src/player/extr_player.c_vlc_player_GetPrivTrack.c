
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_track_vector ;
typedef int vlc_player_t ;
typedef int vlc_es_id_t ;
struct vlc_player_track_priv {int dummy; } ;
struct vlc_player_input {int dummy; } ;


 int vlc_es_id_GetCat (int *) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 int * vlc_player_input_GetTrackVector (struct vlc_player_input*,int ) ;
 struct vlc_player_track_priv* vlc_player_track_vector_FindById (int *,int *,int *) ;

__attribute__((used)) static struct vlc_player_track_priv *
vlc_player_GetPrivTrack(vlc_player_t *player, vlc_es_id_t *id)

{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);

    if (!input)
        return ((void*)0);
    vlc_player_track_vector *vec =
        vlc_player_input_GetTrackVector(input, vlc_es_id_GetCat(id));
    if (!vec)
        return ((void*)0);
    return vlc_player_track_vector_FindById(vec, id, ((void*)0));
}
