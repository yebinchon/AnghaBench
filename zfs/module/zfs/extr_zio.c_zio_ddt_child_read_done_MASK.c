#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ io_error; int /*<<< orphan*/  io_lock; int /*<<< orphan*/ * io_abd; TYPE_2__* io_private; int /*<<< orphan*/ * io_bp; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  ddt_phys_t ;
struct TYPE_8__ {int /*<<< orphan*/ * dde_repair_abd; } ;
typedef  TYPE_2__ ddt_entry_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(zio_t *zio)
{
	blkptr_t *bp = zio->io_bp;
	ddt_entry_t *dde = zio->io_private;
	ddt_phys_t *ddp;
	zio_t *pio = FUNC5(zio);

	FUNC3(&pio->io_lock);
	ddp = FUNC2(dde, bp);
	if (zio->io_error == 0)
		FUNC1(ddp);	/* this ddp doesn't need repair */

	if (zio->io_error == 0 && dde->dde_repair_abd == NULL)
		dde->dde_repair_abd = zio->io_abd;
	else
		FUNC0(zio->io_abd);
	FUNC4(&pio->io_lock);
}