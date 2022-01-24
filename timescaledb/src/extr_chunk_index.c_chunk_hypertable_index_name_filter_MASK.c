#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_7__ {int /*<<< orphan*/  parent_indexoid; } ;
struct TYPE_6__ {int /*<<< orphan*/  hypertable_index_name; } ;
typedef  int /*<<< orphan*/  ScanFilterResult ;
typedef  TYPE_2__ FormData_chunk_index ;
typedef  TYPE_3__ ChunkIndexMapping ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_EXCLUDE ; 
 int /*<<< orphan*/  SCAN_INCLUDE ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static ScanFilterResult
FUNC3(TupleInfo *ti, void *data)
{
	FormData_chunk_index *chunk_index = (FormData_chunk_index *) FUNC0(ti->tuple);
	ChunkIndexMapping *cim = data;
	const char *hypertable_indexname = FUNC1(cim->parent_indexoid);

	if (FUNC2(&chunk_index->hypertable_index_name, hypertable_indexname) == 0)
		return SCAN_INCLUDE;

	return SCAN_EXCLUDE;
}