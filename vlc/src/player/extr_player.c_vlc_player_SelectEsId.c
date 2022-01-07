
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int vlc_es_id_t ;
struct vlc_player_track {int * es_id; scalar_t__ selected; } ;
struct vlc_player_input {int thread; } ;
typedef enum vlc_player_select_policy { ____Placeholder_vlc_player_select_policy } vlc_player_select_policy ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 int INPUT_CONTROL_SET_ES ;
 int VLC_PLAYER_SELECT_EXCLUSIVE ;
 scalar_t__ VLC_SUCCESS ;
 int free (int **) ;
 scalar_t__ input_ControlPushEsHelper (int ,int ,int *) ;
 int ** vlc_alloc (size_t,int) ;
 int vlc_es_id_GetCat (int *) ;
 struct vlc_player_track* vlc_player_GetTrackAt (int *,int const,size_t) ;
 size_t vlc_player_GetTrackCount (int *,int const) ;
 unsigned int vlc_player_SelectEsIdList (int *,int const,int **) ;
 struct vlc_player_input* vlc_player_get_input_locked (int *) ;
 int vlc_player_osd_Track (int *,int *,int) ;

unsigned
vlc_player_SelectEsId(vlc_player_t *player, vlc_es_id_t *id,
                      enum vlc_player_select_policy policy)
{
    struct vlc_player_input *input = vlc_player_get_input_locked(player);
    if (!input)
        return 0;

    if (policy == VLC_PLAYER_SELECT_EXCLUSIVE)
        goto select_one;


    const enum es_format_category_e cat = vlc_es_id_GetCat(id);
    const size_t track_count = vlc_player_GetTrackCount(player, cat);

    if (track_count == 0)
        return 0;

    size_t selected_track_count = 1;
    for (size_t i = 0; i < track_count; ++i)
    {
        const struct vlc_player_track *track =
            vlc_player_GetTrackAt(player, cat, i);
        if (track->selected && track->es_id != id)
            selected_track_count++;
    }

    if (selected_track_count == 1)
        goto select_one;

    vlc_es_id_t **es_id_list =
        vlc_alloc(selected_track_count + 1, sizeof(vlc_es_id_t*));
    if (!es_id_list)
        return 0;

    size_t es_id_list_idx = 0;

    es_id_list[es_id_list_idx++] = id;

    for (size_t i = 0; i < track_count; ++i)
    {
        const struct vlc_player_track *track =
            vlc_player_GetTrackAt(player, cat, i);
        if (track->selected && track->es_id != id)
            es_id_list[es_id_list_idx++] = track->es_id;
    }
    es_id_list[selected_track_count] = ((void*)0);

    unsigned ret = vlc_player_SelectEsIdList(player, cat, es_id_list);
    free(es_id_list);
    return ret;

select_one:
    if (input_ControlPushEsHelper(input->thread, INPUT_CONTROL_SET_ES, id)
     == VLC_SUCCESS)
        vlc_player_osd_Track(player, id, 1);
    return 1;

}
