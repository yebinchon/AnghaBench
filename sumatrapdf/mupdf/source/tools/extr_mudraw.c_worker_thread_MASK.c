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
struct TYPE_2__ {int band; int /*<<< orphan*/  stop; int /*<<< orphan*/  num; int /*<<< orphan*/  bit; int /*<<< orphan*/  pix; int /*<<< orphan*/  cookie; int /*<<< orphan*/  tbounds; int /*<<< orphan*/  ctm; int /*<<< orphan*/  list; int /*<<< orphan*/  ctx; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ worker_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int band_height ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *arg)
{
	worker_t *me = (worker_t *)arg;

	do
	{
		FUNC0(("Worker %d waiting\n", me->num));
		FUNC3(&me->start);
		FUNC0(("Worker %d woken for band %d\n", me->num, me->band));
		if (me->band >= 0)
			FUNC1(me->ctx, NULL, me->list, me->ctm, me->tbounds, &me->cookie, me->band * band_height, me->pix, &me->bit);
		FUNC0(("Worker %d completed band %d\n", me->num, me->band));
		FUNC2(&me->stop);
	}
	while (me->band >= 0);
}