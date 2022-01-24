#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_priority_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_7__ {scalar_t__ dn_datablkshift; int dn_datablksz; int /*<<< orphan*/  dn_struct_rwlock; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dnode_phys_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int DN_MAX_OBJECT ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dmu_prefetch_max ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(objset_t *os, uint64_t object, int64_t level, uint64_t offset,
    uint64_t len, zio_priority_t pri)
{
	dnode_t *dn;
	uint64_t blkid;
	int nblks, err;

	if (len == 0) {  /* they're interested in the bonus buffer */
		dn = FUNC0(os);

		if (object == 0 || object >= DN_MAX_OBJECT)
			return;

		FUNC6(&dn->dn_struct_rwlock, RW_READER);
		blkid = FUNC3(dn, level,
		    object * sizeof (dnode_phys_t));
		FUNC2(dn, level, blkid, pri, 0);
		FUNC7(&dn->dn_struct_rwlock);
		return;
	}

	/*
	 * See comment before the definition of dmu_prefetch_max.
	 */
	len = FUNC1(len, dmu_prefetch_max);

	/*
	 * XXX - Note, if the dnode for the requested object is not
	 * already cached, we will do a *synchronous* read in the
	 * dnode_hold() call.  The same is true for any indirects.
	 */
	err = FUNC4(os, object, FTAG, &dn);
	if (err != 0)
		return;

	/*
	 * offset + len - 1 is the last byte we want to prefetch for, and offset
	 * is the first.  Then dbuf_whichblk(dn, level, off + len - 1) is the
	 * last block we want to prefetch, and dbuf_whichblock(dn, level,
	 * offset)  is the first.  Then the number we need to prefetch is the
	 * last - first + 1.
	 */
	FUNC6(&dn->dn_struct_rwlock, RW_READER);
	if (level > 0 || dn->dn_datablkshift != 0) {
		nblks = FUNC3(dn, level, offset + len - 1) -
		    FUNC3(dn, level, offset) + 1;
	} else {
		nblks = (offset < dn->dn_datablksz);
	}

	if (nblks != 0) {
		blkid = FUNC3(dn, level, offset);
		for (int i = 0; i < nblks; i++)
			FUNC2(dn, level, blkid + i, pri, 0);
	}
	FUNC7(&dn->dn_struct_rwlock);

	FUNC5(dn, FTAG);
}