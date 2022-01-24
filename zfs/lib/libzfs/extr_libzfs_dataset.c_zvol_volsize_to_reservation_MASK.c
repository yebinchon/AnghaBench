#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int DNODES_PER_LEVEL ; 
 unsigned long long DN_MAX_INDBLKSHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SPA_DVAS_PER_BP ; 
 int /*<<< orphan*/  ZFS_PROP_COPIES ; 
 int /*<<< orphan*/  ZFS_PROP_VOLBLOCKSIZE ; 
 int ZVOL_DEFAULT_BLOCKSIZE ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

uint64_t
FUNC6(zpool_handle_t *zph, uint64_t volsize,
    nvlist_t *props)
{
	uint64_t numdb;
	uint64_t nblocks, volblocksize;
	int ncopies;
	char *strval;

	if (FUNC2(props,
	    FUNC5(ZFS_PROP_COPIES), &strval) == 0)
		ncopies = FUNC1(strval);
	else
		ncopies = 1;
	if (FUNC3(props,
	    FUNC5(ZFS_PROP_VOLBLOCKSIZE),
	    &volblocksize) != 0)
		volblocksize = ZVOL_DEFAULT_BLOCKSIZE;

	nblocks = volsize / volblocksize;
	/*
	 * Metadata defaults to using 128k blocks, not volblocksize blocks.  For
	 * this reason, only the data blocks are scaled based on vdev config.
	 */
	volsize = FUNC4(zph, nblocks, volblocksize);

	/* start with metadnode L0-L6 */
	numdb = 7;
	/* calculate number of indirects */
	while (nblocks > 1) {
		nblocks += DNODES_PER_LEVEL - 1;
		nblocks /= DNODES_PER_LEVEL;
		numdb += nblocks;
	}
	numdb *= FUNC0(SPA_DVAS_PER_BP, ncopies + 1);
	volsize *= ncopies;
	/*
	 * this is exactly DN_MAX_INDBLKSHIFT when metadata isn't
	 * compressed, but in practice they compress down to about
	 * 1100 bytes
	 */
	numdb *= 1ULL << DN_MAX_INDBLKSHIFT;
	volsize += numdb;
	return (volsize);
}