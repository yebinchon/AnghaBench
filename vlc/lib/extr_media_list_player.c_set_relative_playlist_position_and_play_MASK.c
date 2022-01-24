#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_media_t ;
struct TYPE_13__ {scalar_t__ e_playback_mode; int /*<<< orphan*/  event_manager; int /*<<< orphan*/  p_mlist; int /*<<< orphan*/  p_mi; int /*<<< orphan*/  current_playing_item_path; } ;
typedef  TYPE_3__ libvlc_media_list_player_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_path_t ;
struct TYPE_11__ {int /*<<< orphan*/ * item; } ;
struct TYPE_12__ {TYPE_1__ media_list_player_next_item_set; } ;
struct TYPE_14__ {TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ libvlc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  libvlc_MediaListPlayerNextItemSet ; 
 int /*<<< orphan*/  libvlc_MediaListPlayerPlayed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ libvlc_playback_mode_loop ; 
 scalar_t__ libvlc_playback_mode_repeat ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(
                                      libvlc_media_list_player_t * p_mlp,
                                      int i_relative_position)
{
    FUNC0(p_mlp);

    if (!p_mlp->p_mlist)
    {
        FUNC10("No media list");
        return -1;
    }

    FUNC5(p_mlp->p_mlist);

    libvlc_media_list_path_t path = p_mlp->current_playing_item_path;

    if(p_mlp->e_playback_mode != libvlc_playback_mode_repeat)
    {
        bool b_loop = (p_mlp->e_playback_mode == libvlc_playback_mode_loop);

        while (i_relative_position > 0)
        {
            path = FUNC1(p_mlp, b_loop);
            FUNC12(p_mlp, path);
            --i_relative_position;
        }

        while (i_relative_position < 0)
        {
            path = FUNC2(p_mlp, b_loop);
            FUNC12(p_mlp, path);
            ++i_relative_position;
        }
    }
    else
    {
        FUNC12(p_mlp, path);
    }

#ifdef DEBUG_MEDIA_LIST_PLAYER
    printf("Playing:");
    libvlc_media_list_path_dump(path);
#endif

    if (!path)
    {
        FUNC7(p_mlp->p_mlist);
        /* Send list played event */
        libvlc_event_t event;
        event.type = libvlc_MediaListPlayerPlayed;
        FUNC3(&p_mlp->event_manager, &event);
        return -1;
    }

    FUNC8(p_mlp->p_mi);

    FUNC7(p_mlp->p_mlist);

    /* Send the next item event */
    libvlc_event_t event;
    event.type = libvlc_MediaListPlayerNextItemSet;
    libvlc_media_t * p_md = FUNC4(p_mlp->p_mlist, path);
    event.u.media_list_player_next_item_set.item = p_md;
    FUNC3(&p_mlp->event_manager, &event);
    FUNC9(p_md);
    return 0;
}