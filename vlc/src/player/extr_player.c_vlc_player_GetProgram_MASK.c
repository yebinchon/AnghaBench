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
typedef  struct vlc_player_program const vlc_player_program ;
struct vlc_player_input {int /*<<< orphan*/  program_vector; } ;

/* Variables and functions */
 struct vlc_player_input* FUNC0 (int /*<<< orphan*/ *) ; 
 struct vlc_player_program const* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

const struct vlc_player_program *
FUNC2(vlc_player_t *player, int id)
{
    struct vlc_player_input *input = FUNC0(player);

    if (!input)
        return NULL;

    struct vlc_player_program *prgm =
        FUNC1(&input->program_vector, id, NULL);
    return prgm;
}