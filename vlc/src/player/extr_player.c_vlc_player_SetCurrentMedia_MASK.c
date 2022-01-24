#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int releasing_media; int next_media_requested; int /*<<< orphan*/ * next_media; int /*<<< orphan*/ * input; scalar_t__ media; } ;
typedef  TYPE_1__ vlc_player_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int
FUNC8(vlc_player_t *player, input_item_t *media)
{
    FUNC5(player);

    FUNC2(player);

    FUNC3(player);

    if (media)
    {
        /* Switch to this new media when the current input is stopped */
        player->next_media = FUNC1(media);
        player->releasing_media = false;
        player->next_media_requested = true;
    }
    else if (player->media)
    {
        /* The current media will be set to NULL once the current input is
         * stopped */
        player->releasing_media = true;
        player->next_media_requested = false;
    }
    else
        return VLC_SUCCESS;

    if (player->input)
    {
        FUNC6(player, player->input);
        player->input = NULL;
    }

    FUNC0(media == player->next_media);
    if (!FUNC7(player))
    {
        /* This media will be opened when the input is finally stopped */
        return VLC_SUCCESS;
    }

    /* We can switch to the next media directly */
    return FUNC4(player);
}