
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int vlc_es_id_t ;
struct vlc_player_track {char* name; } ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 char* _ (char*) ;
 int assert (char const*) ;
 char* es_format_category_to_string (int) ;
 int vlc_es_id_GetCat (int *) ;
 struct vlc_player_track* vlc_player_GetTrack (int *,int *) ;
 int vlc_player_osd_Message (int *,char*,char const*,char const*) ;

void
vlc_player_osd_Track(vlc_player_t *player, vlc_es_id_t *id, bool select)
{
    enum es_format_category_e cat = vlc_es_id_GetCat(id);
    const struct vlc_player_track *track = vlc_player_GetTrack(player, id);
    if (!track && select)
        return;

    const char *cat_name = es_format_category_to_string(cat);
    assert(cat_name);
    const char *track_name = select ? track->name : _("N/A");
    vlc_player_osd_Message(player, _("%s track: %s"), cat_name, track_name);
}
