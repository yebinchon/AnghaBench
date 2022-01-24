#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_playlist_t ;
struct TYPE_4__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ vlc_playlist_listener_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(vlc_playlist_t *playlist,
                            vlc_playlist_listener_id *listener)
{
    /* The playlist head is not needed to remove a node, but the list must be
     * locked. */
    FUNC3(playlist); FUNC0(playlist);

    FUNC2(&listener->node);
    FUNC1(listener);
}