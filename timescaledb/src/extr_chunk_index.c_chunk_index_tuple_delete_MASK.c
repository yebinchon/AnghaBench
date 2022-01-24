#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tuple; int /*<<< orphan*/  scanrel; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_11__ {scalar_t__ drop_index; } ;
struct TYPE_10__ {int /*<<< orphan*/  index_name; } ;
struct TYPE_9__ {int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  TYPE_3__ FormData_chunk_index ;
typedef  TYPE_4__ ChunkIndexDeleteData ;

/* Variables and functions */
 int /*<<< orphan*/  DROP_RESTRICT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanTupleResult
FUNC7(TupleInfo *ti, void *data)
{
	FormData_chunk_index *chunk_index = (FormData_chunk_index *) FUNC0(ti->tuple);
	Oid schemaid = FUNC3(chunk_index, true);
	ChunkIndexDeleteData *cid = data;

	FUNC6(ti->scanrel, ti->tuple);

	if (cid->drop_index)
	{
		ObjectAddress idxobj = {
			.classId = RelationRelationId,
			.objectId = FUNC4(FUNC1(chunk_index->index_name), schemaid),
		};

		if (FUNC2(idxobj.objectId))
			FUNC5(&idxobj, DROP_RESTRICT, 0);
	}

	return SCAN_CONTINUE;
}