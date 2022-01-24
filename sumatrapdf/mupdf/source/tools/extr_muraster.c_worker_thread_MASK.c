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
struct TYPE_2__ {scalar_t__ band_start; int /*<<< orphan*/  stop; int /*<<< orphan*/  status; int /*<<< orphan*/  num; int /*<<< orphan*/  bit; int /*<<< orphan*/  pix; int /*<<< orphan*/  cookie; int /*<<< orphan*/  tbounds; int /*<<< orphan*/  ctm; int /*<<< orphan*/  list; int /*<<< orphan*/  ctx; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ worker_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RENDER_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *arg)
{
	worker_t *me = (worker_t *)arg;

	do
	{
		FUNC0(("Worker %d waiting\n", me->num));
		FUNC3(&me->start);
		FUNC0(("Worker %d woken for band_start %d\n", me->num, me->band_start));
		me->status = RENDER_OK;
		if (me->band_start >= 0)
			me->status = FUNC1(me->ctx, NULL, me->list, me->ctm, me->tbounds, &me->cookie, me->band_start, me->pix, &me->bit);
		FUNC0(("Worker %d completed band_start %d (status=%d)\n", me->num, me->band_start, me->status));
		FUNC2(&me->stop);
	}
	while (me->band_start >= 0);
}