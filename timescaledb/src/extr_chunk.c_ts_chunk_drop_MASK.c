#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct TYPE_10__ {TYPE_2__ table_name; TYPE_1__ schema_name; } ;
struct TYPE_12__ {int /*<<< orphan*/  table_id; TYPE_3__ fd; } ;
struct TYPE_11__ {int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  TYPE_4__ ObjectAddress ;
typedef  int /*<<< orphan*/  DropBehavior ;
typedef  TYPE_5__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(Chunk *chunk, DropBehavior behavior, int32 log_level)
{
	ObjectAddress objaddr = {
		.classId = RelationRelationId,
		.objectId = chunk->table_id,
	};

	if (log_level >= 0)
		FUNC0(log_level,
			 "dropping chunk %s.%s",
			 chunk->fd.schema_name.data,
			 chunk->fd.table_name.data);

	/* Remove the chunk from the hypertable table */
	FUNC2(chunk->table_id, behavior);

	/* Drop the table */
	FUNC1(&objaddr, behavior, 0);
}