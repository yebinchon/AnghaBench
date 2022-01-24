#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tree_dists; int /*<<< orphan*/  tree_lengths; } ;
typedef  TYPE_1__ inflate_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static void FUNC2(inflate_state *state)
{
    int i;

    FUNC0(&state->tree_lengths, 0, sizeof(state->tree_lengths));
    for (i = 0; i < 144; i++)
        FUNC1(&state->tree_lengths, i + 48, 8, i);
    for (i = 144; i < 256; i++)
        FUNC1(&state->tree_lengths, i + 256, 9, i);
    for (i = 256; i < 280; i++)
        FUNC1(&state->tree_lengths, i - 256, 7, i);
    for (i = 280; i < 288; i++)
        FUNC1(&state->tree_lengths, i - 88, 8, i);

    FUNC0(&state->tree_dists, 0, sizeof(state->tree_dists));
    for (i = 0; i < 32; i++)
        FUNC1(&state->tree_dists, i, 5, i);
}