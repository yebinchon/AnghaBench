#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_4__ {struct TYPE_4__* p_next; int /*<<< orphan*/  date; } ;
typedef  TYPE_1__ picture_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; TYPE_1__* first; } ;
typedef  TYPE_2__ picture_fifo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(picture_fifo_t *fifo, vlc_tick_t delta)
{
    FUNC0(&fifo->lock);
    for (picture_t *picture = fifo->first; picture != NULL;) {
        picture->date += delta;
        picture = picture->p_next;
    }
    FUNC1(&fifo->lock);
}