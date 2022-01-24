#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int natts; } ;
struct TYPE_11__ {int /*<<< orphan*/  attname; } ;
struct TYPE_10__ {scalar_t__* ii_IndexAttrNumbers; scalar_t__* ii_KeyAttrNumbers; } ;
struct TYPE_9__ {int /*<<< orphan*/  rd_id; TYPE_8__* rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  TYPE_2__ IndexInfo ;
typedef  TYPE_3__ FormData_pg_attribute ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidAttrNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(IndexInfo *ii, Relation idxrel, Relation chunkrel)
{
	int i;

	for (i = 0; i < idxrel->rd_att->natts; i++)
	{
		FormData_pg_attribute *idxattr = FUNC1(idxrel->rd_att, i);
		AttrNumber attno = FUNC3(chunkrel->rd_id, FUNC0(idxattr->attname));

		if (attno == InvalidAttrNumber)
			FUNC2(ERROR, "index attribute %s not found in chunk", FUNC0(idxattr->attname));
#if PG96 || PG10
		ii->ii_KeyAttrNumbers[i] = attno;
#else
		ii->ii_IndexAttrNumbers[i] = attno;
#endif
	}
}