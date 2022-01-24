#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_24__ {TYPE_1__* os_phys; int /*<<< orphan*/  os_flags; int /*<<< orphan*/  os_encrypted; } ;
typedef  TYPE_2__ objset_t ;
struct TYPE_25__ {void** ds_feature_activation; } ;
typedef  TYPE_3__ dsl_dataset_t ;
struct TYPE_26__ {scalar_t__ dn_datablkshift; int dn_indblkshift; int* dn_next_nlevels; int dn_nlevels; scalar_t__ dn_nblkptr; } ;
typedef  TYPE_4__ dnode_t ;
struct TYPE_27__ {size_t tx_txg; } ;
typedef  TYPE_5__ dmu_tx_t ;
typedef  scalar_t__ dmu_objset_type_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_23__ {int /*<<< orphan*/  os_flags; scalar_t__ os_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_TRUE ; 
 TYPE_4__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ DMU_OST_ANY ; 
 scalar_t__ DMU_OST_NONE ; 
 scalar_t__ DMU_OST_NUMTYPES ; 
 int /*<<< orphan*/  DMU_OT_DNODE ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int DNODE_BLOCK_SIZE ; 
 int /*<<< orphan*/  DNODE_MIN_SLOTS ; 
 scalar_t__ DNODE_SHIFT ; 
 int DN_MAX_INDBLKSHIFT ; 
 scalar_t__ DN_MAX_OBJECT ; 
 int /*<<< orphan*/  OBJSET_FLAG_PROJECTQUOTA_COMPLETE ; 
 int /*<<< orphan*/  OBJSET_FLAG_USERACCOUNTING_COMPLETE ; 
 int /*<<< orphan*/  OBJSET_FLAG_USEROBJACCOUNTING_COMPLETE ; 
 int SPA_BLKPTRSHIFT ; 
 size_t SPA_FEATURE_PROJECT_QUOTA ; 
 size_t SPA_FEATURE_USEROBJ_ACCOUNTING ; 
 size_t TXG_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__**) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_5__*) ; 

objset_t *
FUNC12(spa_t *spa, dsl_dataset_t *ds, blkptr_t *bp,
    dmu_objset_type_t type, int levels, int blksz, int ibs, dmu_tx_t *tx)
{
	objset_t *os;
	dnode_t *mdn;

	FUNC0(FUNC9(tx));

	if (blksz == 0)
		blksz = DNODE_BLOCK_SIZE;
	if (ibs == 0)
		ibs = DN_MAX_INDBLKSHIFT;

	if (ds != NULL)
		FUNC2(FUNC3(ds, &os));
	else
		FUNC2(FUNC5(spa, NULL, bp, &os));

	mdn = FUNC1(os);

	FUNC10(mdn, DMU_OT_DNODE, blksz, ibs, DMU_OT_NONE, 0,
	    DNODE_MIN_SLOTS, tx);

	/*
	 * We don't want to have to increase the meta-dnode's nlevels
	 * later, because then we could do it in quiescing context while
	 * we are also accessing it in open context.
	 *
	 * This precaution is not necessary for the MOS (ds == NULL),
	 * because the MOS is only updated in syncing context.
	 * This is most fortunate: the MOS is the only objset that
	 * needs to be synced multiple times as spa_sync() iterates
	 * to convergence, so minimizing its dn_nlevels matters.
	 */
	if (ds != NULL) {
		if (levels == 0) {
			levels = 1;

			/*
			 * Determine the number of levels necessary for the
			 * meta-dnode to contain DN_MAX_OBJECT dnodes.  Note
			 * that in order to ensure that we do not overflow
			 * 64 bits, there has to be a nlevels that gives us a
			 * number of blocks > DN_MAX_OBJECT but < 2^64.
			 * Therefore, (mdn->dn_indblkshift - SPA_BLKPTRSHIFT)
			 * (10) must be less than (64 - log2(DN_MAX_OBJECT))
			 * (16).
			 */
			while ((uint64_t)mdn->dn_nblkptr <<
			    (mdn->dn_datablkshift - DNODE_SHIFT + (levels - 1) *
			    (mdn->dn_indblkshift - SPA_BLKPTRSHIFT)) <
			    DN_MAX_OBJECT)
				levels++;
		}

		mdn->dn_next_nlevels[tx->tx_txg & TXG_MASK] =
		    mdn->dn_nlevels = levels;
	}

	FUNC0(type != DMU_OST_NONE);
	FUNC0(type != DMU_OST_ANY);
	FUNC0(type < DMU_OST_NUMTYPES);
	os->os_phys->os_type = type;

	/*
	 * Enable user accounting if it is enabled and this is not an
	 * encrypted receive.
	 */
	if (FUNC8(os) &&
	    (!os->os_encrypted || !FUNC4(os))) {
		os->os_phys->os_flags |= OBJSET_FLAG_USERACCOUNTING_COMPLETE;
		if (FUNC7(os)) {
			ds->ds_feature_activation[
			    SPA_FEATURE_USEROBJ_ACCOUNTING] = (void *)B_TRUE;
			os->os_phys->os_flags |=
			    OBJSET_FLAG_USEROBJACCOUNTING_COMPLETE;
		}
		if (FUNC6(os)) {
			ds->ds_feature_activation[
			    SPA_FEATURE_PROJECT_QUOTA] = (void *)B_TRUE;
			os->os_phys->os_flags |=
			    OBJSET_FLAG_PROJECTQUOTA_COMPLETE;
		}
		os->os_flags = os->os_phys->os_flags;
	}

	FUNC11(ds, tx);

	return (os);
}