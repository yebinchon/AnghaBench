#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ od_object; int /*<<< orphan*/  od_name; int /*<<< orphan*/  od_crgen; int /*<<< orphan*/  od_gen; int /*<<< orphan*/  od_crblocksize; int /*<<< orphan*/  od_blocksize; int /*<<< orphan*/  od_crtype; int /*<<< orphan*/  od_type; int /*<<< orphan*/  od_crdnodesize; int /*<<< orphan*/  od_dir; } ;
typedef  TYPE_1__ ztest_od_t ;
struct TYPE_11__ {int /*<<< orphan*/  zd_dirobj_lock; } ;
typedef  TYPE_2__ ztest_ds_t ;
struct TYPE_12__ {scalar_t__ lr_foid; int /*<<< orphan*/ * lr_crtime; int /*<<< orphan*/  lr_gen; int /*<<< orphan*/  lrz_dnodesize; int /*<<< orphan*/  lrz_bonustype; int /*<<< orphan*/  lrz_ibshift; int /*<<< orphan*/  lrz_blocksize; int /*<<< orphan*/  lrz_type; int /*<<< orphan*/  lr_doid; } ;
typedef  TYPE_3__ lr_create_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DMU_OT_UINT64_OTHER ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(ztest_ds_t *zd, ztest_od_t *od, int count)
{
	int missing = 0;
	int i;

	FUNC0(FUNC1(&zd->zd_dirobj_lock));

	for (i = 0; i < count; i++, od++) {
		if (missing) {
			od->od_object = 0;
			missing++;
			continue;
		}

		lr_create_t *lr = FUNC3(sizeof (*lr), od->od_name);

		lr->lr_doid = od->od_dir;
		lr->lr_foid = 0;	/* 0 to allocate, > 0 to claim */
		lr->lrz_type = od->od_crtype;
		lr->lrz_blocksize = od->od_crblocksize;
		lr->lrz_ibshift = FUNC5();
		lr->lrz_bonustype = DMU_OT_UINT64_OTHER;
		lr->lrz_dnodesize = od->od_crdnodesize;
		lr->lr_gen = od->od_crgen;
		lr->lr_crtime[0] = FUNC2(NULL);

		if (FUNC6(zd, lr, B_FALSE) != 0) {
			FUNC0(missing == 0);
			od->od_object = 0;
			missing++;
		} else {
			od->od_object = lr->lr_foid;
			od->od_type = od->od_crtype;
			od->od_blocksize = od->od_crblocksize;
			od->od_gen = od->od_crgen;
			FUNC0(od->od_object != 0);
		}

		FUNC4(lr, sizeof (*lr), od->od_name);
	}

	return (missing);
}