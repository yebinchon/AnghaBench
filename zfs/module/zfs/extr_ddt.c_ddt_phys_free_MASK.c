#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  ddt_spa; int /*<<< orphan*/  ddt_checksum; } ;
typedef  TYPE_1__ ddt_t ;
typedef  int /*<<< orphan*/  ddt_phys_t ;
typedef  int /*<<< orphan*/  ddt_key_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4(ddt_t *ddt, ddt_key_t *ddk, ddt_phys_t *ddp, uint64_t txg)
{
	blkptr_t blk;

	FUNC1(ddt->ddt_checksum, ddk, ddp, &blk);

	/*
	 * We clear the dedup bit so that zio_free() will actually free the
	 * space, rather than just decrementing the refcount in the DDT.
	 */
	FUNC0(&blk, 0);

	FUNC2(ddp);
	FUNC3(ddt->ddt_spa, txg, &blk);
}