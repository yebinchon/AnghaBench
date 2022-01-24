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
struct TYPE_2__ {int /*<<< orphan*/  mp_callback_lock; int /*<<< orphan*/  seek_pending; int /*<<< orphan*/  seek_offset; } ;
typedef  TYPE_1__ libvlc_media_list_player_t ;
typedef  int /*<<< orphan*/  libvlc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(const libvlc_event_t * p_event, void * p_user_data)
{
    FUNC0(p_event);
    libvlc_media_list_player_t * p_mlp = p_user_data;

    /* This event is triggered from the input thread, and changing item in
     * the media player requires the input thread to terminate. So we cannot
     * change the playlist state here (it would cause a deadlock). Instead, we
     * defer to a separate thread. Avoiding this would be nice... */
    FUNC2(&p_mlp->mp_callback_lock);
    p_mlp->seek_offset++;
    FUNC1(&p_mlp->seek_pending);
    FUNC3(&p_mlp->mp_callback_lock);
}