#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ io_offset; TYPE_3__* io_vd; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_11__ {scalar_t__ vdev_psize; scalar_t__ vdev_guid; } ;
typedef  TYPE_3__ vdev_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {scalar_t__ zi_start; scalar_t__ zi_end; scalar_t__ zi_cmd; scalar_t__ zi_guid; } ;
struct TYPE_12__ {TYPE_1__ zi_record; } ;
typedef  TYPE_4__ inject_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  RW_READER ; 
 scalar_t__ VDEV_LABEL_END_SIZE ; 
 scalar_t__ VDEV_LABEL_START_SIZE ; 
 scalar_t__ ZINJECT_LABEL_FAULT ; 
 int /*<<< orphan*/  inject_handlers ; 
 int /*<<< orphan*/  inject_lock ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int,scalar_t__) ; 

int
FUNC6(zio_t *zio, int error)
{
	inject_handler_t *handler;
	vdev_t *vd = zio->io_vd;
	uint64_t offset = zio->io_offset;
	int label;
	int ret = 0;

	if (offset >= VDEV_LABEL_START_SIZE &&
	    offset < vd->vdev_psize - VDEV_LABEL_END_SIZE)
		return (0);

	FUNC2(&inject_lock, RW_READER);

	for (handler = FUNC0(&inject_handlers); handler != NULL;
	    handler = FUNC1(&inject_handlers, handler)) {
		uint64_t start = handler->zi_record.zi_start;
		uint64_t end = handler->zi_record.zi_end;

		if (handler->zi_record.zi_cmd != ZINJECT_LABEL_FAULT)
			continue;

		/*
		 * The injection region is the relative offsets within a
		 * vdev label. We must determine the label which is being
		 * updated and adjust our region accordingly.
		 */
		label = FUNC4(vd->vdev_psize, offset);
		start = FUNC5(vd->vdev_psize, label, start);
		end = FUNC5(vd->vdev_psize, label, end);

		if (zio->io_vd->vdev_guid == handler->zi_record.zi_guid &&
		    (offset >= start && offset <= end)) {
			ret = error;
			break;
		}
	}
	FUNC3(&inject_lock);
	return (ret);
}