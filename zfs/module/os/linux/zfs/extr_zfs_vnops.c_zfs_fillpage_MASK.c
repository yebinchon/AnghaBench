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
struct TYPE_5__ {int /*<<< orphan*/  z_id; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_6__ {int /*<<< orphan*/ * z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  scalar_t__ u_offset_t ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_READ_PREFETCH ; 
 int ECKSUM ; 
 int /*<<< orphan*/  EIO ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 scalar_t__ PAGESIZE ; 
 int PAGE_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct page*) ; 

__attribute__((used)) static int
FUNC8(struct inode *ip, struct page *pl[], int nr_pages)
{
	znode_t *zp = FUNC0(ip);
	zfsvfs_t *zfsvfs = FUNC1(ip);
	objset_t *os;
	struct page *cur_pp;
	u_offset_t io_off, total;
	size_t io_len;
	loff_t i_size;
	unsigned page_idx;
	int err;

	os = zfsvfs->z_os;
	io_len = nr_pages << PAGE_SHIFT;
	i_size = FUNC4(ip);
	io_off = FUNC7(pl[0]);

	if (io_off + io_len > i_size)
		io_len = i_size - io_off;

	/*
	 * Iterate over list of pages and read each page individually.
	 */
	page_idx = 0;
	for (total = io_off + io_len; io_off < total; io_off += PAGESIZE) {
		caddr_t va;

		cur_pp = pl[page_idx++];
		va = FUNC5(cur_pp);
		err = FUNC3(os, zp->z_id, io_off, PAGESIZE, va,
		    DMU_READ_PREFETCH);
		FUNC6(cur_pp);
		if (err) {
			/* convert checksum errors into IO errors */
			if (err == ECKSUM)
				err = FUNC2(EIO);
			return (err);
		}
	}

	return (0);
}