#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ ** uberblocks; int /*<<< orphan*/  label; } ;
typedef  TYPE_1__ zdb_label_t ;
struct TYPE_10__ {int vdev_ashift; struct TYPE_10__* vdev_top; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int uint64_t ;
struct TYPE_11__ {scalar_t__ ub_mmp_magic; scalar_t__ ub_mmp_delay; } ;
typedef  TYPE_3__ uberblock_t ;
typedef  int /*<<< orphan*/  cksum_record_t ;

/* Variables and functions */
 int MMP_BLOCKS_PER_LABEL ; 
 scalar_t__ MMP_MAGIC ; 
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int ZDB_MAX_UB_HEADER_SIZE ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC8(zdb_label_t *label, uint64_t ashift, int label_num)
{

	vdev_t vd;
	char header[ZDB_MAX_UB_HEADER_SIZE];

	vd.vdev_ashift = ashift;
	vd.vdev_top = &vd;

	for (int i = 0; i < FUNC0(&vd); i++) {
		uint64_t uoff = FUNC1(&vd, i);
		uberblock_t *ub = (void *)((char *)&label->label + uoff);
		cksum_record_t *rec = label->uberblocks[i];

		if (rec == NULL) {
			if (dump_opt['u'] >= 2) {
				FUNC4(label, label_num);
				(void) FUNC6("    Uberblock[%d] invalid\n", i);
			}
			continue;
		}

		if ((dump_opt['u'] < 3) && (FUNC3(rec) != label_num))
			continue;

		if ((dump_opt['u'] < 4) &&
		    (ub->ub_mmp_magic == MMP_MAGIC) && ub->ub_mmp_delay &&
		    (i >= FUNC0(&vd) - MMP_BLOCKS_PER_LABEL))
			continue;

		FUNC4(label, label_num);
		(void) FUNC7(header, ZDB_MAX_UB_HEADER_SIZE,
		    "    Uberblock[%d]\n", i);
		FUNC2(ub, header, "");
		FUNC5("        labels = ", rec);
	}
}