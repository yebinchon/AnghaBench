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
struct vlc_player_input {TYPE_1__* abloop_state; } ;
struct TYPE_2__ {scalar_t__ set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_player_input*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_player_input*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_player_input*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct vlc_player_input *input)
{
    if (input->abloop_state[0].set && input->abloop_state[1].set)
        FUNC2(input, FUNC1(input),
                                        FUNC0(input));
}