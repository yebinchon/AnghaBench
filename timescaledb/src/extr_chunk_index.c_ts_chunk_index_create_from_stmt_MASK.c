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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_7__ {int /*<<< orphan*/ * idxname; } ;
struct TYPE_6__ {int /*<<< orphan*/  objectId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__ IndexStmt ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

Oid
FUNC5(IndexStmt *stmt, int32 chunk_id, Oid chunkrelid,
								int32 hypertable_id, Oid hypertable_indexrelid)
{
	ObjectAddress idxobj;
	char *hypertable_indexname = FUNC3(hypertable_indexrelid);

	if (hypertable_indexname == NULL)
		return InvalidOid; /* oops, the root index is gone, lets stop */

	if (NULL != stmt->idxname)
		stmt->idxname = FUNC1(FUNC3(chunkrelid),
												hypertable_indexname,
												FUNC4(chunkrelid));

	idxobj = FUNC0(chunkrelid,
							   stmt,
							   InvalidOid,
							   false, /* is alter table */
							   true,  /* check rights */
							   false, /* skip build */
							   true); /* quiet */

	FUNC2(chunk_id,
					   FUNC3(idxobj.objectId),
					   hypertable_id,
					   hypertable_indexname);

	return idxobj.objectId;
}