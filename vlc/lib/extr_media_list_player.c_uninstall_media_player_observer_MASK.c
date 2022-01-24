#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mp_callback_lock; } ;
typedef  TYPE_1__ libvlc_media_list_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  libvlc_MediaPlayerEndReached ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  media_player_reached_end ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(libvlc_media_list_player_t * p_mlp)
{
    FUNC0(p_mlp);

    // Allow callbacks to run, because detach() will wait until all callbacks are processed.
    // This is safe because only callbacks are allowed, and there execution will be cancelled.
    FUNC4(&p_mlp->mp_callback_lock);
    FUNC1(FUNC2(p_mlp), libvlc_MediaPlayerEndReached, media_player_reached_end, p_mlp);

    // Now, lock back the callback lock. No more callback will be present from this point.
    FUNC3(&p_mlp->mp_callback_lock);

    // What is here is safe, because we guarantee that we won't be able to anything concurrently,
    // - except (cancelled) callbacks - thanks to the object_lock.
}