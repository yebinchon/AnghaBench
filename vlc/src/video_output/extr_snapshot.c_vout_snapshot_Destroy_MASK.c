#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; TYPE_2__* picture; } ;
typedef  TYPE_1__ vout_snapshot_t ;
struct TYPE_7__ {struct TYPE_7__* p_next; } ;
typedef  TYPE_2__ picture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(vout_snapshot_t *snap)
{
    if (snap == NULL)
        return;

    picture_t *picture = snap->picture;
    while (picture) {
        picture_t *next = picture->p_next;
        FUNC1(picture);
        picture = next;
    }

    FUNC2(&snap->wait);
    FUNC3(&snap->lock);
    FUNC0(snap);
}