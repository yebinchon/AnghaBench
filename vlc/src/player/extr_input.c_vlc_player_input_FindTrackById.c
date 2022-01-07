
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_track_vector ;
typedef int vlc_es_id_t ;
struct vlc_player_track_priv {int dummy; } ;
struct vlc_player_input {int dummy; } ;


 int vlc_es_id_GetCat (int *) ;
 int * vlc_player_input_GetTrackVector (struct vlc_player_input*,int ) ;
 struct vlc_player_track_priv* vlc_player_track_vector_FindById (int *,int *,size_t*) ;

struct vlc_player_track_priv *
vlc_player_input_FindTrackById(struct vlc_player_input *input, vlc_es_id_t *id,
                               size_t *idx)
{
    vlc_player_track_vector *vec =
        vlc_player_input_GetTrackVector(input, vlc_es_id_GetCat(id));
    return vec ? vlc_player_track_vector_FindById(vec, id, idx) : ((void*)0);
}
