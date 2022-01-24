#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint64_t ;
struct TYPE_26__ {void** os_next_write_raw; TYPE_1__* os_phys; int /*<<< orphan*/  os_phys_buf; } ;
typedef  TYPE_2__ objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_27__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_3__ dsl_pool_t ;
struct TYPE_28__ {int /*<<< orphan*/  ds_dbuf; int /*<<< orphan*/  ds_bp_rwlock; } ;
typedef  TYPE_4__ dsl_dataset_t ;
struct TYPE_29__ {int /*<<< orphan*/  dn_struct_rwlock; void* dn_checksum; void* dn_compress; } ;
typedef  TYPE_5__ dnode_t ;
struct TYPE_30__ {size_t tx_txg; TYPE_3__* tx_pool; } ;
typedef  TYPE_6__ dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_objset_type_t ;
typedef  void* boolean_t ;
struct TYPE_25__ {int /*<<< orphan*/  os_local_mac; int /*<<< orphan*/  os_portable_mac; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 TYPE_5__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  RW_WRITER ; 
 size_t TXG_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIO_FLAG_MUSTSUCCEED ; 
 int /*<<< orphan*/  ZIO_OBJSET_MAC_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,void*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,void*,TYPE_6__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_6__*) ; 
 void* FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC22(dsl_dataset_t *ds, dmu_objset_type_t ostype,
    nvlist_t *nvl, dmu_tx_t *tx)
{
	dsl_pool_t *dp = tx->tx_pool;
	objset_t *os;
	dnode_t *mdn;
	zio_t *zio;
	uint8_t *portable_mac;
	uint_t len;
	uint64_t compress, checksum, nlevels, blksz, ibs, maxblkid;
	boolean_t newds = B_FALSE;

	FUNC2(FUNC8(ds, &os));
	mdn = FUNC1(os);

	/*
	 * Fetch the values we need from the nvlist. "to_ivset_guid" must
	 * be set on the snapshot, which doesn't exist yet. The receive
	 * code will take care of this for us later.
	 */
	compress = FUNC14(nvl, "mdn_compress");
	checksum = FUNC14(nvl, "mdn_checksum");
	nlevels = FUNC14(nvl, "mdn_nlevels");
	blksz = FUNC14(nvl, "mdn_blksz");
	ibs = FUNC14(nvl, "mdn_indblkshift");
	maxblkid = FUNC14(nvl, "mdn_maxblkid");
	FUNC2(FUNC15(nvl, "portable_mac", &portable_mac,
	    &len));

	/* if we haven't created an objset for the ds yet, do that now */
	FUNC16(&ds->ds_bp_rwlock, RW_READER, FTAG);
	if (FUNC0(FUNC11(ds))) {
		(void) FUNC7(dp->dp_spa, ds,
		    FUNC11(ds), ostype, nlevels, blksz,
		    ibs, tx);
		newds = B_TRUE;
	}
	FUNC17(&ds->ds_bp_rwlock, FTAG);

	/*
	 * Set the portable MAC. The local MAC will always be zero since the
	 * incoming data will all be portable and user accounting will be
	 * deferred until the next mount. Afterwards, flag the os to be
	 * written out raw next time.
	 */
	FUNC3(os->os_phys_buf, &os->os_phys_buf);
	FUNC4(portable_mac, os->os_phys->os_portable_mac, ZIO_OBJSET_MAC_LEN);
	FUNC5(os->os_phys->os_local_mac, ZIO_OBJSET_MAC_LEN);
	os->os_next_write_raw[tx->tx_txg & TXG_MASK] = B_TRUE;

	/* set metadnode compression and checksum */
	mdn->dn_compress = compress;
	mdn->dn_checksum = checksum;

	FUNC18(&mdn->dn_struct_rwlock, RW_WRITER);
	FUNC9(mdn, maxblkid, tx, B_FALSE, B_TRUE);
	FUNC19(&mdn->dn_struct_rwlock);

	/*
	 * We can't normally dirty the dataset in syncing context unless
	 * we are creating a new dataset. In this case, we perform a
	 * pseudo txg sync here instead.
	 */
	if (newds) {
		FUNC10(ds, tx);
	} else {
		zio = FUNC20(dp->dp_spa, NULL, NULL, ZIO_FLAG_MUSTSUCCEED);
		FUNC12(ds, zio, tx);
		FUNC2(FUNC21(zio));

		/* dsl_dataset_sync_done will drop this reference. */
		FUNC6(ds->ds_dbuf, ds);
		FUNC13(ds, tx);
	}
}