#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  vlc_es_id_t ;
struct vlc_player_track {int /*<<< orphan*/ * es_id; scalar_t__ selected; } ;
struct vlc_player_input {int /*<<< orphan*/  thread; } ;
typedef  enum vlc_player_select_policy { ____Placeholder_vlc_player_select_policy } vlc_player_select_policy ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_CONTROL_SET_ES ; 
 int VLC_PLAYER_SELECT_EXCLUSIVE ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC2 (size_t,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct vlc_player_track* FUNC4 (int /*<<< orphan*/ *,int const,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int const) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ **) ; 
 struct vlc_player_input* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

unsigned
FUNC9(vlc_player_t *player, vlc_es_id_t *id,
                      enum vlc_player_select_policy policy)
{
    struct vlc_player_input *input = FUNC7(player);
    if (!input)
        return 0;

    if (policy == VLC_PLAYER_SELECT_EXCLUSIVE)
        goto select_one;

    /* VLC_PLAYER_SELECT_SIMULTANEOUS */
    const enum es_format_category_e cat = FUNC3(id);
    const size_t track_count = FUNC5(player, cat);

    if (track_count == 0)
        return 0;

    size_t selected_track_count = 1;
    for (size_t i = 0; i < track_count; ++i)
    {
        const struct vlc_player_track *track =
            FUNC4(player, cat, i);
        if (track->selected && track->es_id != id)
            selected_track_count++;
    }

    if (selected_track_count == 1)
        goto select_one;

    vlc_es_id_t **es_id_list =
        FUNC2(selected_track_count + 1, sizeof(vlc_es_id_t*));
    if (!es_id_list)
        return 0;

    size_t es_id_list_idx = 0;
    /* Assure to select the requeste track */
    es_id_list[es_id_list_idx++] = id;

    for (size_t i = 0; i < track_count; ++i)
    {
        const struct vlc_player_track *track =
            FUNC4(player, cat, i);
        if (track->selected && track->es_id != id)
            es_id_list[es_id_list_idx++] = track->es_id;
    }
    es_id_list[selected_track_count] = NULL;

    unsigned ret = FUNC6(player, cat, es_id_list);
    FUNC0(es_id_list);
    return ret;

select_one:
    if (FUNC1(input->thread, INPUT_CONTROL_SET_ES, id)
     == VLC_SUCCESS)
        FUNC8(player, id, true);
    return 1;

}