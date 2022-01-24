#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t size; } ;
struct TYPE_10__ {int current; int /*<<< orphan*/  has_next; int /*<<< orphan*/  has_prev; TYPE_1__ items; } ;
typedef  TYPE_2__ vlc_playlist_t ;
struct vlc_playlist_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  on_items_removed ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct vlc_playlist_state*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct vlc_playlist_state*) ; 

__attribute__((used)) static bool
FUNC5(vlc_playlist_t *playlist, size_t index, size_t count)
{
    struct vlc_playlist_state state;
    FUNC4(playlist, &state);

    bool current_media_changed = false;
    if (playlist->current != -1) {
        size_t current = (size_t) playlist->current;
        if (current >= index && current < index + count) {
            /* current item has been removed */
            if (index + count < playlist->items.size) {
                /* select the first item after the removed block */
                playlist->current = index;
            } else {
                /* no more items */
                playlist->current = -1;
            }
            current_media_changed = true;
        } else if (current >= index + count) {
            playlist->current -= count;
        }
    }
    playlist->has_prev = FUNC1(playlist);
    playlist->has_next = FUNC0(playlist);

    FUNC2(playlist, on_items_removed, index, count);
    FUNC3(playlist, &state);

    return current_media_changed;
}