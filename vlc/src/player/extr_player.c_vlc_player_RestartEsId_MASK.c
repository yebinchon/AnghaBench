#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  vlc_es_id_t ;
struct vlc_player_input {int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_CONTROL_RESTART_ES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vlc_player_input* FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(vlc_player_t *player, vlc_es_id_t *id)
{
    struct vlc_player_input *input = FUNC1(player);

    if (input)
        FUNC0(input->thread, INPUT_CONTROL_RESTART_ES, id);
}