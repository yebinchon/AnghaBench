#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_6__ {scalar_t__ db_offset; int db_size; scalar_t__ db_data; } ;
typedef  TYPE_1__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,void const*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(dmu_buf_t **dbp, int numbufs, uint64_t offset, uint64_t size,
    const void *buf, dmu_tx_t *tx)
{
	int i;

	for (i = 0; i < numbufs; i++) {
		uint64_t tocpy;
		int64_t bufoff;
		dmu_buf_t *db = dbp[i];

		FUNC0(size > 0);

		bufoff = offset - db->db_offset;
		tocpy = FUNC1(db->db_size - bufoff, size);

		FUNC0(i == 0 || i == numbufs-1 || tocpy == db->db_size);

		if (tocpy == db->db_size)
			FUNC4(db, tx);
		else
			FUNC3(db, tx);

		(void) FUNC5((char *)db->db_data + bufoff, buf, tocpy);

		if (tocpy == db->db_size)
			FUNC2(db, tx);

		offset += tocpy;
		size -= tocpy;
		buf = (char *)buf + tocpy;
	}
}