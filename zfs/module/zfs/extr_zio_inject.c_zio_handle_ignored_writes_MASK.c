#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ io_spa; scalar_t__ io_txg; int /*<<< orphan*/  io_pipeline; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_8__ {scalar_t__ zi_cmd; scalar_t__ zi_timer; scalar_t__ zi_duration; } ;
struct TYPE_10__ {scalar_t__ zi_spa; TYPE_1__ zi_record; } ;
typedef  TYPE_3__ inject_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 scalar_t__ ZINJECT_IGNORED_WRITES ; 
 int /*<<< orphan*/  ZIO_VDEV_IO_STAGES ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  inject_handlers ; 
 int /*<<< orphan*/  inject_lock ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 

void
FUNC6(zio_t *zio)
{
	inject_handler_t *handler;

	FUNC3(&inject_lock, RW_READER);

	for (handler = FUNC1(&inject_handlers); handler != NULL;
	    handler = FUNC2(&inject_handlers, handler)) {

		/* Ignore errors not destined for this pool */
		if (zio->io_spa != handler->zi_spa ||
		    handler->zi_record.zi_cmd != ZINJECT_IGNORED_WRITES)
			continue;

		/*
		 * Positive duration implies # of seconds, negative
		 * a number of txgs
		 */
		if (handler->zi_record.zi_timer == 0) {
			if (handler->zi_record.zi_duration > 0)
				handler->zi_record.zi_timer = FUNC0();
			else
				handler->zi_record.zi_timer = zio->io_txg;
		}

		/* Have a "problem" writing 60% of the time */
		if (FUNC5(100) < 60)
			zio->io_pipeline &= ~ZIO_VDEV_IO_STAGES;
		break;
	}

	FUNC4(&inject_lock);
}