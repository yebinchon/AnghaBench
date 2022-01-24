#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_10__ {scalar_t__ date; struct TYPE_10__* p_next; } ;
typedef  TYPE_1__ picture_t ;
struct TYPE_11__ {int /*<<< orphan*/  lock; TYPE_1__* first; } ;
typedef  TYPE_2__ picture_fifo_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(picture_fifo_t *fifo, vlc_tick_t date, bool flush_before)
{
    picture_t *picture;

    FUNC4(&fifo->lock);

    picture = fifo->first;
    FUNC2(fifo);

    picture_fifo_t tmp;
    FUNC2(&tmp);

    while (picture) {
        picture_t *next = picture->p_next;

        picture->p_next = NULL;
        if ((date == VLC_TICK_INVALID) ||
            ( flush_before && picture->date <= date) ||
            (!flush_before && picture->date >= date))
            FUNC1(&tmp, picture);
        else
            FUNC1(fifo, picture);
        picture = next;
    }
    FUNC5(&fifo->lock);

    while ((picture = FUNC0(&tmp)) != NULL)
        FUNC3(picture);
}