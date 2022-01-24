#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_2__ {int /*<<< orphan*/  p_sem; } ;
typedef  TYPE_1__ preparse_data_t ;
typedef  enum vlc_player_state { ____Placeholder_vlc_player_state } vlc_player_state ;

/* Variables and functions */
 int VLC_PLAYER_STATE_STOPPING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(vlc_player_t *player,
                                      enum vlc_player_state new_state, void *data)
{
    FUNC0(player);
    preparse_data_t *p_pre = data;

    if (new_state == VLC_PLAYER_STATE_STOPPING)
        FUNC1(p_pre->p_sem);
}