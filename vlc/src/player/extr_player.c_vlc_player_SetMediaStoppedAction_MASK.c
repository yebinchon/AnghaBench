#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int media_stopped_action; } ;
typedef  TYPE_1__ vlc_player_t ;
typedef  enum vlc_player_media_stopped_action { ____Placeholder_vlc_player_media_stopped_action } vlc_player_media_stopped_action ;

/* Variables and functions */
 int VLC_PLAYER_MEDIA_STOPPED_PAUSE ; 
 int /*<<< orphan*/  on_media_stopped_action_changed ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(vlc_player_t *player,
                                 enum vlc_player_media_stopped_action action)
{
    FUNC2(player);
    player->media_stopped_action = action;
    FUNC0(player, "play-and-pause",
                action == VLC_PLAYER_MEDIA_STOPPED_PAUSE);
    FUNC1(player, on_media_stopped_action_changed, action);
}