#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ii_Expressions; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ IndexInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(IndexInfo *indexinfo, Oid ht_relid, Relation template_indexrel,
						   Relation chunkrel)
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
	if (FUNC2(indexinfo->ii_Expressions) == 0)
		FUNC1(indexinfo, template_indexrel, chunkrel);
	else
		FUNC0(ht_relid, indexinfo, chunkrel);
}