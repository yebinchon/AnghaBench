
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_track {scalar_t__ selected; } ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 int VLC_PLAYER_SELECT_EXCLUSIVE ;
 int assert (struct vlc_player_track const*) ;
 struct vlc_player_track* vlc_player_GetTrackAt (int *,int,size_t) ;
 size_t vlc_player_GetTrackCount (int *,int) ;
 int vlc_player_SelectTrack (int *,struct vlc_player_track const*,int ) ;
 int vlc_player_UnselectTrack (int *,struct vlc_player_track const*) ;

__attribute__((used)) static void
vlc_player_CycleTrack(vlc_player_t *player, enum es_format_category_e cat,
                      bool next)
{
    size_t count = vlc_player_GetTrackCount(player, cat);
    if (!count)
        return;

    size_t index;
    bool selected = 0;
    for (size_t i = 0; i < count; ++i)
    {
        const struct vlc_player_track *track =
            vlc_player_GetTrackAt(player, cat, i);
        assert(track);
        if (track->selected)
        {
            if (selected)
            {


                return;
            }
            index = i;
            selected = 1;
        }
    }

    if (!selected)
    {

        index = next ? 0 : count - 1;
        selected = 1;
    }
    else
    {

        if ((next && index + 1 == count) || (!next && index == 0))
            selected = 0;
        else
            index = index + (next ? 1 : -1);
    }

    const struct vlc_player_track *track =
        vlc_player_GetTrackAt(player, cat, index);
    if (selected)
        vlc_player_SelectTrack(player, track, VLC_PLAYER_SELECT_EXCLUSIVE);
    else
        vlc_player_UnselectTrack(player, track);
}
