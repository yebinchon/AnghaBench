#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int zi_start; unsigned long long zi_end; scalar_t__ zi_level; int /*<<< orphan*/  zi_object; int /*<<< orphan*/  zi_objset; } ;
typedef  TYPE_1__ zinject_record_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_7__ {int dn_datablkshift; scalar_t__ dn_nlevels; int dn_indblkshift; } ;
typedef  TYPE_2__ dnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDOM ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SPA_BLKPTRSHIFT ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(const char *pool, zinject_record_t *record)
{
	dsl_pool_t *dp;
	dsl_dataset_t *ds;
	objset_t *os = NULL;
	dnode_t *dn = NULL;
	int error;

	/*
	 * Obtain the dnode for object using pool, objset, and object
	 */
	error = FUNC6(pool, FTAG, &dp);
	if (error)
		return (error);

	error = FUNC4(dp, record->zi_objset, FTAG, &ds);
	FUNC7(dp, FTAG);
	if (error)
		return (error);

	error = FUNC1(ds, &os);
	FUNC5(ds, FTAG);
	if (error)
		return (error);

	error = FUNC2(os, record->zi_object, FTAG, &dn);
	if (error)
		return (error);

	/*
	 * Translate the range into block IDs
	 */
	if (record->zi_start != 0 || record->zi_end != -1ULL) {
		record->zi_start >>= dn->dn_datablkshift;
		record->zi_end >>= dn->dn_datablkshift;
	}
	if (record->zi_level > 0) {
		if (record->zi_level >= dn->dn_nlevels) {
			FUNC3(dn, FTAG);
			return (FUNC0(EDOM));
		}

		if (record->zi_start != 0 || record->zi_end != 0) {
			int shift = dn->dn_indblkshift - SPA_BLKPTRSHIFT;

			for (int level = record->zi_level; level > 0; level--) {
				record->zi_start >>= shift;
				record->zi_end >>= shift;
			}
		}
	}

	FUNC3(dn, FTAG);
	return (0);
}