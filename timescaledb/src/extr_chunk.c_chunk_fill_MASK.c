#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_9__ {TYPE_2__ schema_name; TYPE_1__ table_name; } ;
struct TYPE_8__ {int /*<<< orphan*/  table_id; int /*<<< orphan*/  hypertable_relid; TYPE_4__ fd; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(Chunk *chunk, HeapTuple tuple, TupleDesc desc)
{
	FUNC0(&chunk->fd, tuple, desc);

	chunk->table_id = FUNC2(chunk->fd.table_name.data,
										FUNC1(chunk->fd.schema_name.data, true));
	chunk->hypertable_relid = FUNC3(chunk->table_id);
}