#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct status_line {int /*<<< orphan*/  screen; int /*<<< orphan*/ * active; TYPE_2__* entries; } ;
struct TYPE_3__ {int /*<<< orphan*/  sx; } ;
struct client {TYPE_1__ tty; struct status_line status; } ;
struct TYPE_4__ {int /*<<< orphan*/  ranges; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC3(struct client *c)
{
	struct status_line	*sl = &c->status;
	u_int			 i;

	for (i = 0; i < FUNC1(sl->entries); i++)
		FUNC0(&sl->entries[i].ranges);

	FUNC2(&sl->screen, c->tty.sx, 1, 0);
	sl->active = &sl->screen;
}