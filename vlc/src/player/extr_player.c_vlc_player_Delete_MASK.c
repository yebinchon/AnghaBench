#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  wait; } ;
struct TYPE_11__ {int deleting; scalar_t__ renderer; int /*<<< orphan*/  resource; scalar_t__ next_media; scalar_t__ media; TYPE_1__ destructor; int /*<<< orphan*/  lock; int /*<<< orphan*/  aout_listeners; int /*<<< orphan*/  vout_listeners; int /*<<< orphan*/  listeners; scalar_t__ input; } ;
typedef  TYPE_2__ vlc_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  vlc_player_CorkCallback ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

void
FUNC15(vlc_player_t *player)
{
    FUNC7(&player->lock);

    if (player->input)
        FUNC13(player, player->input);

    player->deleting = true;
    FUNC4(&player->destructor.wait);

    FUNC0(FUNC6(&player->listeners));
    FUNC0(FUNC6(&player->vout_listeners));
    FUNC0(FUNC6(&player->aout_listeners));

    FUNC8(&player->lock);

    FUNC5(player->destructor.thread, NULL);

    if (player->media)
        FUNC1(player->media);
    if (player->next_media)
        FUNC1(player->next_media);

    FUNC10(player);

    FUNC11(player);

    FUNC12(player);
    FUNC3(player, "corks", vlc_player_CorkCallback, NULL);

    FUNC2(player->resource);
    if (player->renderer)
        FUNC14(player->renderer);

    FUNC9(player);
}