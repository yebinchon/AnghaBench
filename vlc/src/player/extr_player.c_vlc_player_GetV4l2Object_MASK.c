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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vlc_player_input {scalar_t__ thread; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 struct vlc_player_input* FUNC1 (int /*<<< orphan*/ *) ; 

vlc_object_t *
FUNC2(vlc_player_t *player)
{
    struct vlc_player_input *input = FUNC1(player);
    return input && FUNC0(input->thread, "controls") != 0 ?
           (vlc_object_t*) input->thread : NULL;
}