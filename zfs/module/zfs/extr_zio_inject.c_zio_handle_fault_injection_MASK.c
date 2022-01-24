#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ io_type; scalar_t__ io_spa; scalar_t__ io_bp; TYPE_1__* io_logical; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_13__ {scalar_t__ zi_cmd; } ;
struct TYPE_12__ {scalar_t__ zi_spa; TYPE_4__ zi_record; } ;
typedef  TYPE_3__ inject_handler_t ;
struct TYPE_10__ {int /*<<< orphan*/  io_bookmark; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  RW_READER ; 
 scalar_t__ ZINJECT_DATA_FAULT ; 
 scalar_t__ ZIO_TYPE_READ ; 
 int /*<<< orphan*/  inject_handlers ; 
 int /*<<< orphan*/  inject_lock ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int) ; 

int
FUNC7(zio_t *zio, int error)
{
	int ret = 0;
	inject_handler_t *handler;

	/*
	 * Ignore I/O not associated with any logical data.
	 */
	if (zio->io_logical == NULL)
		return (0);

	/*
	 * Currently, we only support fault injection on reads.
	 */
	if (zio->io_type != ZIO_TYPE_READ)
		return (0);

	FUNC3(&inject_lock, RW_READER);

	for (handler = FUNC1(&inject_handlers); handler != NULL;
	    handler = FUNC2(&inject_handlers, handler)) {
		if (zio->io_spa != handler->zi_spa ||
		    handler->zi_record.zi_cmd != ZINJECT_DATA_FAULT)
			continue;

		/* If this handler matches, return the specified error */
		if (FUNC6(&zio->io_logical->io_bookmark,
		    zio->io_bp ? FUNC0(zio->io_bp) : DMU_OT_NONE,
		    FUNC5(zio), &handler->zi_record, error)) {
			ret = error;
			break;
		}
	}

	FUNC4(&inject_lock);

	return (ret);
}