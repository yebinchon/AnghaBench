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
struct TYPE_9__ {int /*<<< orphan*/  listeners; } ;
typedef  TYPE_1__ vlc_playlist_t ;
struct TYPE_10__ {int /*<<< orphan*/  node; void* userdata; struct vlc_playlist_callbacks const* cbs; } ;
typedef  TYPE_2__ vlc_playlist_listener_id ;
struct vlc_playlist_callbacks {int dummy; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 

vlc_playlist_listener_id *
FUNC5(vlc_playlist_t *playlist,
                         const struct vlc_playlist_callbacks *cbs,
                         void *userdata, bool notify_current_state)
{
    FUNC3(playlist);

    vlc_playlist_listener_id *listener = FUNC0(sizeof(*listener));
    if (FUNC1(!listener))
        return NULL;

    listener->cbs = cbs;
    listener->userdata = userdata;
    FUNC2(&listener->node, &playlist->listeners);

    if (notify_current_state)
        FUNC4(playlist, listener);

    return listener;
}