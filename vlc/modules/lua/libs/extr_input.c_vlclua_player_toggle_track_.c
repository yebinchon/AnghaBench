
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_track {scalar_t__ selected; } ;
typedef int lua_State ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 struct vlc_player_track* FindTrack (int *,int,int) ;
 int VLC_PLAYER_SELECT_EXCLUSIVE ;
 int vlc_player_Lock (int *) ;
 int vlc_player_SelectTrack (int *,struct vlc_player_track const*,int ) ;
 int vlc_player_Unlock (int *) ;
 int vlc_player_UnselectTrack (int *,struct vlc_player_track const*) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_player_toggle_track_(lua_State *L,
                                       enum es_format_category_e cat,
                                       int id)
{
    vlc_player_t *player = vlclua_get_player_internal(L);

    vlc_player_Lock(player);

    const struct vlc_player_track *track = FindTrack(player, cat, id);
    if (track) {
        if (track->selected)
            vlc_player_UnselectTrack(player, track);
        else
            vlc_player_SelectTrack(player, track, VLC_PLAYER_SELECT_EXCLUSIVE);
    }

    vlc_player_Unlock(player);

    return 0;
}
