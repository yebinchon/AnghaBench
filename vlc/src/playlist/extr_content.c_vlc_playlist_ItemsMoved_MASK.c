#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int current; int /*<<< orphan*/  has_next; int /*<<< orphan*/  has_prev; } ;
typedef  TYPE_1__ vlc_playlist_t ;
struct vlc_playlist_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  on_items_moved ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct vlc_playlist_state*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct vlc_playlist_state*) ; 

__attribute__((used)) static void
FUNC5(vlc_playlist_t *playlist, size_t index, size_t count,
                        size_t target)
{
    struct vlc_playlist_state state;
    FUNC4(playlist, &state);

    if (playlist->current != -1) {
        size_t current = (size_t) playlist->current;
        if (index < target)
        {
            if (current >= index && current < index + count)
                /* current item belongs to the moved block */
                playlist->current += target - index;
            else if (current >= index + count && current < target + count)
                /* current item was shifted backwards to the moved block */
                playlist->current -= count;
            /* else the current item does not move */
        }
        else
        {
            if (current >= index && current < index + count)
                /* current item belongs to the moved block */
                playlist->current -= index - target;
            else if (current >= target && current < index)
                /* current item was shifted forward to the moved block */
                playlist->current += count;
            /* else the current item does not move */
        }
    }

    playlist->has_prev = FUNC1(playlist);
    playlist->has_next = FUNC0(playlist);

    FUNC2(playlist, on_items_moved, index, count, target);
    FUNC3(playlist, &state);
}