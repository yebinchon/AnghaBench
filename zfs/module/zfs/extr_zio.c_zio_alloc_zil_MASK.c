#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_alloc_list_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_15__ {int spa_alloc_count; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_16__ {scalar_t__ os_encrypted; TYPE_1__* os_dsl_dataset; } ;
typedef  TYPE_3__ objset_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_14__ {int /*<<< orphan*/  ds_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OT_INTENT_LOG ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  METASLAB_FASTWRITE ; 
 scalar_t__ SPA_VERSION_SLIM_ZIL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_HOST_BYTEORDER ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_ZILOG ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_ZILOG2 ; 
 int /*<<< orphan*/  ZIO_COMPRESS_OFF ; 
 int ZIO_DATA_IV_LEN ; 
 int ZIO_DATA_SALT_LEN ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 scalar_t__ FUNC20 (TYPE_2__*) ; 
 scalar_t__ FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

int
FUNC25(spa_t *spa, objset_t *os, uint64_t txg, blkptr_t *new_bp,
    uint64_t size, boolean_t *slog)
{
	int error = 1;
	zio_alloc_list_t io_alloc_list;

	FUNC0(txg > FUNC20(spa));

	FUNC15(&io_alloc_list);

	/*
	 * Block pointer fields are useful to metaslabs for stats and debugging.
	 * Fill in the obvious ones before calling into metaslab_alloc().
	 */
	FUNC9(new_bp, DMU_OT_INTENT_LOG);
	FUNC8(new_bp, size);
	FUNC6(new_bp, 0);

	/*
	 * When allocating a zil block, we don't have information about
	 * the final destination of the block except the objset it's part
	 * of, so we just hash the objset ID to pick the allocator to get
	 * some parallelism.
	 */
	error = FUNC13(spa, FUNC17(spa), size, new_bp, 1,
	    txg, NULL, METASLAB_FASTWRITE, &io_alloc_list, NULL,
	    FUNC11(0, 0, 0, os->os_dsl_dataset->ds_object) %
	    spa->spa_alloc_count);
	if (error == 0) {
		*slog = TRUE;
	} else {
		error = FUNC13(spa, FUNC19(spa), size,
		    new_bp, 1, txg, NULL, METASLAB_FASTWRITE,
		    &io_alloc_list, NULL, FUNC11(0, 0, 0,
		    os->os_dsl_dataset->ds_object) % spa->spa_alloc_count);
		if (error == 0)
			*slog = FALSE;
	}
	FUNC14(&io_alloc_list);

	if (error == 0) {
		FUNC7(new_bp, size);
		FUNC8(new_bp, size);
		FUNC3(new_bp, ZIO_COMPRESS_OFF);
		FUNC2(new_bp,
		    FUNC21(spa) >= SPA_VERSION_SLIM_ZIL
		    ? ZIO_CHECKSUM_ZILOG2 : ZIO_CHECKSUM_ZILOG);
		FUNC9(new_bp, DMU_OT_INTENT_LOG);
		FUNC6(new_bp, 0);
		FUNC5(new_bp, 0);
		FUNC1(new_bp, ZFS_HOST_BYTEORDER);

		/*
		 * encrypted blocks will require an IV and salt. We generate
		 * these now since we will not be rewriting the bp at
		 * rewrite time.
		 */
		if (os->os_encrypted) {
			uint8_t iv[ZIO_DATA_IV_LEN];
			uint8_t salt[ZIO_DATA_SALT_LEN];

			FUNC4(new_bp, B_TRUE);
			FUNC10(FUNC16(spa,
			    FUNC12(os), salt));
			FUNC10(FUNC24(iv));

			FUNC23(new_bp, salt, iv);
		}
	} else {
		FUNC22("%s: zil block allocation failure: "
		    "size %llu, error %d", FUNC18(spa), size, error);
	}

	return (error);
}