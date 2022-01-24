#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_18__ {int /*<<< orphan*/  ii_Expressions; } ;
struct TYPE_17__ {int /*<<< orphan*/  rd_id; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ IndexInfo ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC8(Relation htrel, Relation template_indexrel, Relation chunkrel,
							bool isconstraint, Oid index_tablespace)
{
	IndexInfo *indexinfo = FUNC0(template_indexrel);
	int32 hypertable_id;

	/*
	 * Convert the IndexInfo's attnos to match the chunk instead of the
	 * hypertable
	 */
	if (FUNC4(FUNC1(htrel), FUNC1(chunkrel)))
	{
		/*
		 * Adjust a hypertable's index attribute numbers to match a chunk.
		 *
		 * A hypertable's IndexInfo for one of its indexes references the attributes
		 * (columns) in the hypertable by number. These numbers might not be the same
		 * for the corresponding attribute in one of its chunks. To be able to use an
		 * IndexInfo from a hypertable's index to create a corresponding index on a
		 * chunk, we need to adjust the attribute numbers to match the chunk.
		 *
		 * We need to handle two cases: (1) regular indexes that reference columns
		 * directly, and (2) expression indexes that reference columns in expressions.
		 */
		if (FUNC5(indexinfo->ii_Expressions) == 0)
			FUNC3(indexinfo, template_indexrel, chunkrel);
		else
		{
			FUNC2(htrel->rd_id, indexinfo, chunkrel);
		}
	}

	hypertable_id = FUNC7(htrel->rd_id);

	return FUNC6(hypertable_id,
												 template_indexrel,
												 chunkrel,
												 indexinfo,
												 isconstraint,
												 index_tablespace);
}