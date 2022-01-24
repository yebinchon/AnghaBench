#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ request_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; TYPE_2__* picture; } ;
typedef  TYPE_1__ vout_snapshot_t ;
typedef  int /*<<< orphan*/  video_format_t ;
struct TYPE_8__ {struct TYPE_8__* p_next; int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ picture_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(vout_snapshot_t *snap,
                       const video_format_t *fmt,
                       picture_t *picture)
{
    if (snap == NULL)
        return;

    if (!fmt)
        fmt = &picture->format;

    FUNC3(&snap->lock);
    while (snap->request_count > 0) {
        picture_t *dup = FUNC0(picture);
        if (!dup)
            break;

        FUNC1( &dup->format, fmt );

        dup->p_next = snap->picture;
        snap->picture = dup;
        snap->request_count--;
    }
    FUNC2(&snap->wait);
    FUNC4(&snap->lock);
}