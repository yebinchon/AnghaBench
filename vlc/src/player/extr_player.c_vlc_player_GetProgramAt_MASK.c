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
struct vlc_player_program {int dummy; } ;
struct TYPE_2__ {size_t size; struct vlc_player_program const** data; } ;
struct vlc_player_input {TYPE_1__ program_vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vlc_player_input* FUNC1 (int /*<<< orphan*/ *) ; 

const struct vlc_player_program *
FUNC2(vlc_player_t *player, size_t index)
{
    struct vlc_player_input *input = FUNC1(player);

    if (!input)
        return NULL;

    FUNC0(index < input->program_vector.size);
    return input->program_vector.data[index];
}