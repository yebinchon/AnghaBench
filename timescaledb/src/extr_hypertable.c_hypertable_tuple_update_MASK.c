#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* tuple; int /*<<< orphan*/  scanrel; int /*<<< orphan*/  desc; } ;
typedef  TYPE_3__ TupleInfo ;
struct TYPE_17__ {int /*<<< orphan*/  func_name; int /*<<< orphan*/  func_schema; int /*<<< orphan*/  func; int /*<<< orphan*/ * colname; int /*<<< orphan*/  table_relid; } ;
struct TYPE_12__ {int /*<<< orphan*/  column_name; } ;
struct TYPE_16__ {TYPE_1__ fd; } ;
struct TYPE_11__ {int /*<<< orphan*/  chunk_sizing_func_name; int /*<<< orphan*/  chunk_sizing_func_schema; } ;
struct TYPE_15__ {TYPE_10__ fd; int /*<<< orphan*/  chunk_sizing_func; int /*<<< orphan*/  main_table_relid; int /*<<< orphan*/  space; } ;
struct TYPE_13__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  TYPE_4__ Hypertable ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_5__ Dimension ;
typedef  TYPE_6__ ChunkSizingInfo ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;

/* Variables and functions */
 int /*<<< orphan*/  DIMENSION_TYPE_OPEN ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_DONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 TYPE_5__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanTupleResult
FUNC12(TupleInfo *ti, void *data)
{
	Hypertable *ht = data;
	HeapTuple new_tuple;
	CatalogSecurityContext sec_ctx;

	if (FUNC1(ht->chunk_sizing_func))
	{
		Dimension *dim = FUNC11(ht->space, DIMENSION_TYPE_OPEN, 0);
		ChunkSizingInfo info = {
			.table_relid = ht->main_table_relid,
			.colname = dim == NULL ? NULL : FUNC0(dim->fd.column_name),
			.func = ht->chunk_sizing_func,
		};

		FUNC10(&info);

		FUNC5(&ht->fd.chunk_sizing_func_schema, FUNC0(info.func_schema));
		FUNC5(&ht->fd.chunk_sizing_func_name, FUNC0(info.func_name));
	}
	else
	{
		FUNC2(ERROR, "hypertable_tuple_update chunk_sizing_function cannot be NULL");
	}

	new_tuple = FUNC4(&ht->fd, ti->desc);

	FUNC6(FUNC7(), &sec_ctx);
	FUNC9(ti->scanrel, &ti->tuple->t_self, new_tuple);
	FUNC8(&sec_ctx);
	FUNC3(new_tuple);
	return SCAN_DONE;
}