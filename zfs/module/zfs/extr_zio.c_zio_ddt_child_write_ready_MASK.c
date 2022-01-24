#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int zp_copies; } ;
struct TYPE_8__ {int /*<<< orphan*/  io_txg; int /*<<< orphan*/  io_bp; scalar_t__ io_error; TYPE_3__* io_private; int /*<<< orphan*/  io_spa; TYPE_1__ io_prop; } ;
typedef  TYPE_2__ zio_t ;
typedef  int /*<<< orphan*/  zio_link_t ;
typedef  int /*<<< orphan*/  ddt_t ;
typedef  int /*<<< orphan*/  ddt_phys_t ;
struct TYPE_9__ {TYPE_2__** dde_lead_zio; int /*<<< orphan*/ * dde_phys; } ;
typedef  TYPE_3__ ddt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC7(zio_t *zio)
{
	int p = zio->io_prop.zp_copies;
	ddt_t *ddt = FUNC5(zio->io_spa, zio->io_bp);
	ddt_entry_t *dde = zio->io_private;
	ddt_phys_t *ddp = &dde->dde_phys[p];
	zio_t *pio;

	if (zio->io_error)
		return;

	FUNC2(ddt);

	FUNC0(dde->dde_lead_zio[p] == zio);

	FUNC4(ddp, zio->io_bp);

	zio_link_t *zl = NULL;
	while ((pio = FUNC6(zio, &zl)) != NULL)
		FUNC1(ddp, pio->io_bp, zio->io_txg);

	FUNC3(ddt);
}