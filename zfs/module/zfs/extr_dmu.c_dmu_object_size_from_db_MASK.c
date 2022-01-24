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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_longlong_t ;
struct TYPE_3__ {scalar_t__ dn_num_slots; int /*<<< orphan*/  dn_phys; int /*<<< orphan*/  dn_datablksz; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int SPA_MINBLOCKSHIFT ; 
 int SPA_MINBLOCKSIZE ; 

void
FUNC4(dmu_buf_t *db_fake, uint32_t *blksize,
    u_longlong_t *nblk512)
{
	dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;
	dnode_t *dn;

	FUNC1(db);
	dn = FUNC0(db);

	*blksize = dn->dn_datablksz;
	/* add in number of slots used for the dnode itself */
	*nblk512 = ((FUNC3(dn->dn_phys) + SPA_MINBLOCKSIZE/2) >>
	    SPA_MINBLOCKSHIFT) + dn->dn_num_slots;
	FUNC2(db);
}