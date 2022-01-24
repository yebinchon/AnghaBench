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
struct TYPE_7__ {int /*<<< orphan*/  aout_listeners_lock; } ;
typedef  TYPE_1__ vlc_player_t ;
struct TYPE_8__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_2__ vlc_player_aout_listener_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(vlc_player_t *player,
                               vlc_player_aout_listener_id *id)
{
    FUNC0(id);

    FUNC3(&player->aout_listeners_lock);
    FUNC2(&id->node);
    FUNC4(&player->aout_listeners_lock);
    FUNC1(id);
}