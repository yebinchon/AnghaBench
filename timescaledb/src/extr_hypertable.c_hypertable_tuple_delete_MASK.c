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
struct TYPE_3__ {int /*<<< orphan*/  tuple; int /*<<< orphan*/  scanrel; int /*<<< orphan*/  desc; } ;
typedef  TYPE_1__ TupleInfo ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_hypertable_compressed_hypertable_id ; 
 int /*<<< orphan*/  Anum_hypertable_id ; 
 int /*<<< orphan*/  DROP_RESTRICT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ScanTupleResult
FUNC14(TupleInfo *ti, void *data)
{
	CatalogSecurityContext sec_ctx;
	bool isnull;
	bool compressed_hypertable_id_isnull;
	int hypertable_id =
		FUNC0(FUNC1(ti->tuple, Anum_hypertable_id, ti->desc, &isnull));
	int compressed_hypertable_id =
		FUNC0(FUNC1(ti->tuple,
								   Anum_hypertable_compressed_hypertable_id,
								   ti->desc,
								   &compressed_hypertable_id_isnull));

	FUNC13(hypertable_id, NULL);
	FUNC7(hypertable_id);
	FUNC9(hypertable_id, true);

	/* Also remove any policy argument / job that uses this hypertable */
	FUNC2(hypertable_id);

	/* Remove any dependent continuous aggs */
	FUNC8(hypertable_id);

	/* remove any associated compression definitions */
	FUNC10(hypertable_id);

	if (!compressed_hypertable_id_isnull)
	{
		Hypertable *compressed_hypertable = FUNC12(compressed_hypertable_id);
		/* The hypertable may have already been deleted by a cascade */
		if (compressed_hypertable != NULL)
			FUNC11(compressed_hypertable, DROP_RESTRICT);
	}

	FUNC3(FUNC4(), &sec_ctx);
	FUNC5(ti->scanrel, ti->tuple);
	FUNC6(&sec_ctx);

	return SCAN_CONTINUE;
}