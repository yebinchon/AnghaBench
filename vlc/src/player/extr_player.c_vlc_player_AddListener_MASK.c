#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  listeners; } ;
typedef  TYPE_1__ vlc_player_t ;
struct TYPE_8__ {int /*<<< orphan*/  node; void* cbs_data; struct vlc_player_cbs const* cbs; } ;
typedef  TYPE_2__ vlc_player_listener_id ;
struct vlc_player_cbs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_player_cbs const*) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

vlc_player_listener_id *
FUNC4(vlc_player_t *player,
                       const struct vlc_player_cbs *cbs, void *cbs_data)
{
    FUNC0(cbs);
    FUNC3(player);

    vlc_player_listener_id *listener = FUNC1(sizeof(*listener));
    if (!listener)
        return NULL;

    listener->cbs = cbs;
    listener->cbs_data = cbs_data;

    FUNC2(&listener->node, &player->listeners);

    return listener;
}