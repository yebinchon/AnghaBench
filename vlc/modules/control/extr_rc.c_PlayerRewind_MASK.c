#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ intf_thread_t ;
struct TYPE_5__ {int /*<<< orphan*/ * playlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIONID_JUMP_BACKWARD_EXTRASHORT ; 
 scalar_t__ FUNC0 (float,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,float) ; 
 float FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(intf_thread_t *intf)
{
    vlc_playlist_t *playlist = intf->p_sys->playlist;
    vlc_player_t *player = FUNC8(playlist);

    FUNC6(player);
    if (FUNC3(player))
    {
        float rate = FUNC5(player);
        FUNC4(player, FUNC0(rate, 0.f) ? rate * 2.f : -rate);
    }
    else
        FUNC1(FUNC2(intf), "key-action",
                       ACTIONID_JUMP_BACKWARD_EXTRASHORT);
    FUNC7(player);
}