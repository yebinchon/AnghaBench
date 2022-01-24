#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  event_manager; int /*<<< orphan*/ * current_playing_item_path; int /*<<< orphan*/  p_mi; } ;
typedef  TYPE_1__ libvlc_media_list_player_t ;
struct TYPE_9__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ libvlc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  libvlc_MediaListPlayerStopped ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(libvlc_media_list_player_t * p_mlp)
{
    FUNC0(p_mlp);

    /* We are not interested in getting media stop event now */
    FUNC5(p_mlp);
    FUNC4(p_mlp->p_mi);
    FUNC2(p_mlp);

    FUNC1(p_mlp->current_playing_item_path);
    p_mlp->current_playing_item_path = NULL;

    /* Send the event */
    libvlc_event_t event;
    event.type = libvlc_MediaListPlayerStopped;
    FUNC3(&p_mlp->event_manager, &event);
}