
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_track {int es_id; } ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 int vlc_es_id_GetInputId (int ) ;
 struct vlc_player_track* vlc_player_GetTrackAt (int *,int,size_t) ;
 size_t vlc_player_GetTrackCount (int *,int) ;

__attribute__((used)) static const struct vlc_player_track *
FindTrack(vlc_player_t *player, enum es_format_category_e cat, int id)
{
    size_t count = vlc_player_GetTrackCount(player, cat);
    for (size_t i = 0; i < count; ++i)
    {
        const struct vlc_player_track *track =
                vlc_player_GetTrackAt(player, cat, i);
        if (id == vlc_es_id_GetInputId(track->es_id))
            return track;
    }
    return ((void*)0);
}
