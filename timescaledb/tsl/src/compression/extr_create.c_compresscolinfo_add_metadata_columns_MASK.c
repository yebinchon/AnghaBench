#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  lt_opr; } ;
typedef  TYPE_1__ TypeCacheEntry ;
struct TYPE_17__ {int numcols; TYPE_4__* col_meta; void* coldeflist; } ;
struct TYPE_16__ {scalar_t__ orderby_column_index; int /*<<< orphan*/  attname; } ;
struct TYPE_15__ {int /*<<< orphan*/  atttypid; } ;
struct TYPE_14__ {int /*<<< orphan*/  rd_id; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  TYPE_4__ FormData_hypertable_compression ;
typedef  TYPE_5__ CompressColInfo ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COMPRESSION_COLUMN_METADATA_COUNT_NAME ; 
 int /*<<< orphan*/  COMPRESSION_COLUMN_METADATA_SEQUENCE_NUM_NAME ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  TYPECACHE_LT_OPR ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC12 (void*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(CompressColInfo *cc, Relation uncompressed_rel)
{
	/* additional metadata columns.
	 * these are not listed in hypertable_compression catalog table
	 * and so only has a ColDef entry */
	int colno;

	/* count column */
	cc->coldeflist = FUNC12(cc->coldeflist,

							 /* count of the number of uncompressed rows */
							 FUNC14(COMPRESSION_COLUMN_METADATA_COUNT_NAME,
										   INT4OID,
										   -1 /* typemod */,
										   0 /*collation*/));
	/* sequence_num column */
	cc->coldeflist = FUNC12(cc->coldeflist,

							 /* count of the number of uncompressed rows */
							 FUNC14(COMPRESSION_COLUMN_METADATA_SEQUENCE_NUM_NAME,
										   INT4OID,
										   -1 /* typemod */,
										   0 /*collation*/));

	for (colno = 0; colno < cc->numcols; colno++)
	{
		if (cc->col_meta[colno].orderby_column_index > 0)
		{
			FormData_hypertable_compression fd = cc->col_meta[colno];
			AttrNumber col_attno = FUNC11(uncompressed_rel->rd_id, FUNC1(fd.attname));
			Form_pg_attribute attr = FUNC4(FUNC3(uncompressed_rel),
												   FUNC0(col_attno));
			TypeCacheEntry *type = FUNC13(attr->atttypid, TYPECACHE_LT_OPR);

			if (!FUNC2(type->lt_opr))
				FUNC7(ERROR,
						(FUNC8(ERRCODE_UNDEFINED_FUNCTION),
						 FUNC9("invalid order by column type: could not identify an less-than "
								"operator for type %s",
								FUNC10(attr->atttypid))));

			/* segment_meta min and max columns */
			cc->coldeflist =
				FUNC12(cc->coldeflist,
						FUNC14(FUNC6(&cc->col_meta[colno]),
									  attr->atttypid,
									  -1 /* typemod */,
									  0 /*collation*/));
			cc->coldeflist =
				FUNC12(cc->coldeflist,
						FUNC14(FUNC5(&cc->col_meta[colno]),
									  attr->atttypid,
									  -1 /* typemod */,
									  0 /*collation*/));
		}
	}
}