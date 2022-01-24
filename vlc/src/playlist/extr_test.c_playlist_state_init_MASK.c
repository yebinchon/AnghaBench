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
typedef  int /*<<< orphan*/  vlc_playlist_t ;
struct playlist_state {int /*<<< orphan*/  has_next; int /*<<< orphan*/  has_prev; int /*<<< orphan*/  current; int /*<<< orphan*/  playlist_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct playlist_state *state, vlc_playlist_t *playlist)
{
    state->playlist_size = FUNC0(playlist);
    state->current = FUNC1(playlist);
    state->has_prev = FUNC3(playlist);
    state->has_next = FUNC2(playlist);
}