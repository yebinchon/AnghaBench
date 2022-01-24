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
struct TYPE_3__ {scalar_t__ zs_ptrtbl_len; int zs_num_blocks; int /*<<< orphan*/  zs_buckets_with_n_entries; int /*<<< orphan*/  zs_entries_using_n_chunks; int /*<<< orphan*/  zs_blocks_n_tenths_full; int /*<<< orphan*/  zs_blocks_with_n5_entries; int /*<<< orphan*/  zs_leafs_with_2n_pointers; scalar_t__ zs_salt; scalar_t__ zs_magic; scalar_t__ zs_block_type; scalar_t__ zs_num_leafs; scalar_t__ zs_num_entries; scalar_t__ zs_ptrtbl_nextblk; scalar_t__ zs_ptrtbl_blks_copied; scalar_t__ zs_ptrtbl_zt_shift; scalar_t__ zs_ptrtbl_zt_numblks; scalar_t__ zs_ptrtbl_zt_blk; scalar_t__ zs_blocksize; } ;
typedef  TYPE_1__ zap_stats_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZAP_HISTOGRAM_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(objset_t *os, uint64_t object)
{
	int error;
	zap_stats_t zs;

	error = FUNC3(os, object, &zs);
	if (error)
		return;

	if (zs.zs_ptrtbl_len == 0) {
		FUNC0(zs.zs_num_blocks == 1);
		(void) FUNC2("\tmicrozap: %llu bytes, %llu entries\n",
		    (u_longlong_t)zs.zs_blocksize,
		    (u_longlong_t)zs.zs_num_entries);
		return;
	}

	(void) FUNC2("\tFat ZAP stats:\n");

	(void) FUNC2("\t\tPointer table:\n");
	(void) FUNC2("\t\t\t%llu elements\n",
	    (u_longlong_t)zs.zs_ptrtbl_len);
	(void) FUNC2("\t\t\tzt_blk: %llu\n",
	    (u_longlong_t)zs.zs_ptrtbl_zt_blk);
	(void) FUNC2("\t\t\tzt_numblks: %llu\n",
	    (u_longlong_t)zs.zs_ptrtbl_zt_numblks);
	(void) FUNC2("\t\t\tzt_shift: %llu\n",
	    (u_longlong_t)zs.zs_ptrtbl_zt_shift);
	(void) FUNC2("\t\t\tzt_blks_copied: %llu\n",
	    (u_longlong_t)zs.zs_ptrtbl_blks_copied);
	(void) FUNC2("\t\t\tzt_nextblk: %llu\n",
	    (u_longlong_t)zs.zs_ptrtbl_nextblk);

	(void) FUNC2("\t\tZAP entries: %llu\n",
	    (u_longlong_t)zs.zs_num_entries);
	(void) FUNC2("\t\tLeaf blocks: %llu\n",
	    (u_longlong_t)zs.zs_num_leafs);
	(void) FUNC2("\t\tTotal blocks: %llu\n",
	    (u_longlong_t)zs.zs_num_blocks);
	(void) FUNC2("\t\tzap_block_type: 0x%llx\n",
	    (u_longlong_t)zs.zs_block_type);
	(void) FUNC2("\t\tzap_magic: 0x%llx\n",
	    (u_longlong_t)zs.zs_magic);
	(void) FUNC2("\t\tzap_salt: 0x%llx\n",
	    (u_longlong_t)zs.zs_salt);

	(void) FUNC2("\t\tLeafs with 2^n pointers:\n");
	FUNC1(zs.zs_leafs_with_2n_pointers, ZAP_HISTOGRAM_SIZE, 0);

	(void) FUNC2("\t\tBlocks with n*5 entries:\n");
	FUNC1(zs.zs_blocks_with_n5_entries, ZAP_HISTOGRAM_SIZE, 0);

	(void) FUNC2("\t\tBlocks n/10 full:\n");
	FUNC1(zs.zs_blocks_n_tenths_full, ZAP_HISTOGRAM_SIZE, 0);

	(void) FUNC2("\t\tEntries with n chunks:\n");
	FUNC1(zs.zs_entries_using_n_chunks, ZAP_HISTOGRAM_SIZE, 0);

	(void) FUNC2("\t\tBuckets with n entries:\n");
	FUNC1(zs.zs_buckets_with_n_entries, ZAP_HISTOGRAM_SIZE, 0);
}