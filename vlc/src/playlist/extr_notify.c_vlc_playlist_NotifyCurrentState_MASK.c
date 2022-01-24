#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  has_next; int /*<<< orphan*/  has_prev; int /*<<< orphan*/  current; int /*<<< orphan*/  order; int /*<<< orphan*/  repeat; TYPE_1__ items; } ;
typedef  TYPE_2__ vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_playlist_listener_id ;

/* Variables and functions */
 int /*<<< orphan*/  on_current_index_changed ; 
 int /*<<< orphan*/  on_has_next_changed ; 
 int /*<<< orphan*/  on_has_prev_changed ; 
 int /*<<< orphan*/  on_items_reset ; 
 int /*<<< orphan*/  on_playback_order_changed ; 
 int /*<<< orphan*/  on_playback_repeat_changed ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC1(vlc_playlist_t *playlist,
                                vlc_playlist_listener_id *listener)
{
    FUNC0(playlist, listener, on_items_reset,
                                playlist->items.data, playlist->items.size);
    FUNC0(playlist, listener, on_playback_repeat_changed,
                                playlist->repeat);
    FUNC0(playlist, listener, on_playback_order_changed,
                                playlist->order);
    FUNC0(playlist, listener, on_current_index_changed,
                                playlist->current);
    FUNC0(playlist, listener, on_has_prev_changed,
                                playlist->has_prev);
    FUNC0(playlist, listener, on_has_next_changed,
                                playlist->has_next);
}