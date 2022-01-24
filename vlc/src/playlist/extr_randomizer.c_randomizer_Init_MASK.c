#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct randomizer {int loop; scalar_t__ history; scalar_t__ next; scalar_t__ head; int /*<<< orphan*/  xsubi; int /*<<< orphan*/  items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct randomizer *r)
{
    FUNC1(&r->items);

    /* initialize separately instead of using vlc_lrand48() to avoid locking
     * the mutex for every random number generation */
    FUNC0(r->xsubi, sizeof(r->xsubi));

    r->loop = false;
    r->head = 0;
    r->next = 0;
    r->history = 0;
}