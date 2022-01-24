#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct receive_writer_arg {scalar_t__ max_object; scalar_t__ byteswap; int /*<<< orphan*/  os; scalar_t__ raw; scalar_t__ spill; } ;
struct drr_spill {scalar_t__ drr_compressiontype; scalar_t__ drr_compressed_size; scalar_t__ drr_object; int /*<<< orphan*/  drr_type; int /*<<< orphan*/  drr_length; int /*<<< orphan*/  drr_flags; } ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  size_t dmu_object_byteswap_t ;
struct TYPE_15__ {int /*<<< orphan*/  db_size; int /*<<< orphan*/  db_object; } ;
typedef  TYPE_1__ dmu_buf_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;
struct TYPE_16__ {int /*<<< orphan*/  b_data; } ;
typedef  TYPE_2__ arc_buf_t ;
struct TYPE_17__ {int /*<<< orphan*/  (* ob_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_READ_NO_DECRYPT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drr_spill*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_MINBLOCKSIZE ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZIO_COMPRESS_FUNCTIONS ; 
 scalar_t__ ZIO_COMPRESS_OFF ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_7__* dmu_ot_byteswap ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25(struct receive_writer_arg *rwa, struct drr_spill *drrs,
    arc_buf_t *abuf)
{
	dmu_tx_t *tx;
	dmu_buf_t *db, *db_spill;
	int err;

	if (drrs->drr_length < SPA_MINBLOCKSIZE ||
	    drrs->drr_length > FUNC23(FUNC15(rwa->os)))
		return (FUNC4(EINVAL));

	/*
	 * This is an unmodified spill block which was added to the stream
	 * to resolve an issue with incorrectly removing spill blocks.  It
	 * should be ignored by current versions of the code which support
	 * the DRR_FLAG_SPILL_BLOCK flag.
	 */
	if (rwa->spill && FUNC2(drrs->drr_flags)) {
		FUNC16(abuf);
		return (0);
	}

	if (rwa->raw) {
		if (!FUNC1(drrs->drr_type) ||
		    drrs->drr_compressiontype >= ZIO_COMPRESS_FUNCTIONS ||
		    drrs->drr_compressed_size == 0)
			return (FUNC4(EINVAL));
	}

	if (FUNC14(rwa->os, drrs->drr_object, NULL) != 0)
		return (FUNC4(EINVAL));

	if (drrs->drr_object > rwa->max_object)
		rwa->max_object = drrs->drr_object;

	FUNC6(FUNC11(rwa->os, drrs->drr_object, FTAG, &db));
	if ((err = FUNC17(db, DMU_READ_NO_DECRYPT, FTAG,
	    &db_spill)) != 0) {
		FUNC12(db, FTAG);
		return (err);
	}

	tx = FUNC21(rwa->os);

	FUNC22(tx, db->db_object);

	err = FUNC19(tx, TXG_WAIT);
	if (err != 0) {
		FUNC12(db, FTAG);
		FUNC12(db_spill, FTAG);
		FUNC18(tx);
		return (err);
	}

	/*
	 * Spill blocks may both grow and shrink.  When a change in size
	 * occurs any existing dbuf must be updated to match the logical
	 * size of the provided arc_buf_t.
	 */
	if (db_spill->db_size != drrs->drr_length) {
		FUNC13(db_spill, tx);
		FUNC5(0 == FUNC10(db_spill,
		    drrs->drr_length, tx));
	}

	if (rwa->byteswap && !FUNC8(abuf) &&
	    FUNC7(abuf) == ZIO_COMPRESS_OFF) {
		dmu_object_byteswap_t byteswap =
		    FUNC0(drrs->drr_type);
		dmu_ot_byteswap[byteswap].ob_func(abuf->b_data,
		    FUNC3(drrs));
	}

	FUNC9((dmu_buf_impl_t *)db_spill, abuf, tx);

	FUNC12(db, FTAG);
	FUNC12(db_spill, FTAG);

	FUNC20(tx);
	return (0);
}