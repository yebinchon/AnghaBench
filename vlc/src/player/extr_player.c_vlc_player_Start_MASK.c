#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int started; TYPE_3__* input; scalar_t__ start_paused; int /*<<< orphan*/  media; scalar_t__ next_media; } ;
typedef  TYPE_1__ vlc_player_t ;
struct TYPE_11__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  started; } ;

/* Variables and functions */
 int /*<<< orphan*/  OSD_PLAY_ICON ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_VAR_BOOL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_3__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC9(vlc_player_t *player)
{
    FUNC4(player);

    FUNC3(player);

    if (player->started)
        return VLC_SUCCESS;

    if (!FUNC5(player))
    {
        if (player->next_media)
        {
            player->started = true;
            return VLC_SUCCESS;
        }
        else
            return VLC_EGENERIC;
    }

    if (!player->media)
        return VLC_EGENERIC;

    if (!player->input)
    {
        /* Possible if the player was stopped by the user */
        player->input = FUNC6(player, player->media);

        if (!player->input)
            return VLC_ENOMEM;
    }
    FUNC0(!player->input->started);

    if (player->start_paused)
    {
        FUNC1(player->input->thread, "start-paused", VLC_VAR_BOOL);
        FUNC2(player->input->thread, "start-paused", true);
    }

    int ret = FUNC7(player->input);
    if (ret == VLC_SUCCESS)
    {
        player->started = true;
        FUNC8(player, OSD_PLAY_ICON);
    }
    return ret;
}