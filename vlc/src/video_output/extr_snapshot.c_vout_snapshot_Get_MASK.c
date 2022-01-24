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
struct TYPE_5__ {scalar_t__ request_count; int /*<<< orphan*/  lock; TYPE_2__* picture; int /*<<< orphan*/  wait; scalar_t__ is_available; } ;
typedef  TYPE_1__ vout_snapshot_t ;
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef  TYPE_2__ picture_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 

picture_t *FUNC4(vout_snapshot_t *snap, vlc_tick_t timeout)
{
    if (snap == NULL)
        return NULL;

    const vlc_tick_t deadline = FUNC3() + timeout;

    FUNC1(&snap->lock);

    /* */
    snap->request_count++;

    /* */
    while (snap->is_available && !snap->picture &&
        FUNC0(&snap->wait, &snap->lock, deadline) == 0);

    /* */
    picture_t *picture = snap->picture;
    if (picture)
        snap->picture = picture->p_next;
    else if (snap->request_count > 0)
        snap->request_count--;

    FUNC2(&snap->lock);

    return picture;
}