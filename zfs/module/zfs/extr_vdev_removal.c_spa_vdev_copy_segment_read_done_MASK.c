#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ io_error; scalar_t__ io_size; TYPE_2__* io_private; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_6__ {int /*<<< orphan*/  vca_lock; int /*<<< orphan*/  vca_read_error_bytes; } ;
typedef  TYPE_2__ vdev_copy_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(zio_t *zio)
{
	vdev_copy_arg_t *vca = zio->io_private;

	if (zio->io_error != 0) {
		FUNC0(&vca->vca_lock);
		vca->vca_read_error_bytes += zio->io_size;
		FUNC1(&vca->vca_lock);
	}

	FUNC2(FUNC3(zio));
}