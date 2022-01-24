#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ media_stopped_action; int next_media_requested; int /*<<< orphan*/  media_provider_data; TYPE_1__* media_provider; int /*<<< orphan*/ * next_media; } ;
typedef  TYPE_2__ vlc_player_t ;
struct TYPE_6__ {int /*<<< orphan*/ * (* get_next ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ VLC_PLAYER_MEDIA_STOPPED_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(vlc_player_t *player)
{
    FUNC2(player);

    if (!player->media_provider
     || player->media_stopped_action != VLC_PLAYER_MEDIA_STOPPED_CONTINUE
     || player->next_media_requested)
        return;

    FUNC0(player->next_media == NULL);
    player->next_media =
        player->media_provider->get_next(player, player->media_provider_data);
    player->next_media_requested = true;
}