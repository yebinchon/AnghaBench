#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * io_spa; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
#define  ZIO_FAILURE_MODE_CONTINUE 130 
#define  ZIO_FAILURE_MODE_PANIC 129 
#define  ZIO_FAILURE_MODE_WAIT 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  zfs_deadman_enabled ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC6(zio_t *pio, char *tag)
{
	spa_t *spa = pio->io_spa;
	char *name = FUNC2(spa);

	if (!zfs_deadman_enabled || FUNC3(spa))
		return;

	FUNC5(pio, 0);

	switch (FUNC1(spa)) {
	case ZIO_FAILURE_MODE_WAIT:
		FUNC4("%s waiting for hung I/O to pool '%s'", tag, name);
		break;

	case ZIO_FAILURE_MODE_CONTINUE:
		FUNC4("%s restarting hung I/O for pool '%s'", tag, name);
		break;

	case ZIO_FAILURE_MODE_PANIC:
		FUNC0("%s determined I/O to pool '%s' is hung.", tag, name);
		break;
	}
}