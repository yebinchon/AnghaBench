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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_7__ {int /*<<< orphan*/  num_dimensions; int /*<<< orphan*/  id; int /*<<< orphan*/  table_name; int /*<<< orphan*/  schema_name; } ;
struct TYPE_6__ {TYPE_3__ fd; int /*<<< orphan*/  chunk_sizing_func; int /*<<< orphan*/  space; int /*<<< orphan*/  chunk_cache; int /*<<< orphan*/  main_table_relid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ Hypertable ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ts_guc_max_cached_chunks_per_hypertable ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Hypertable *
FUNC8(HeapTuple tuple, MemoryContext mctx, TupleDesc desc)
{
	Oid namespace_oid;
	Hypertable *h = FUNC0(mctx, sizeof(Hypertable));
	FUNC5(&h->fd, tuple, desc);

	namespace_oid = FUNC3(FUNC1(h->fd.schema_name), false);
	h->main_table_relid = FUNC4(FUNC1(h->fd.table_name), namespace_oid);
	h->space = FUNC6(h->fd.id, h->main_table_relid, h->fd.num_dimensions, mctx);
	h->chunk_cache =
		FUNC7(h->space, mctx, ts_guc_max_cached_chunks_per_hypertable);
	h->chunk_sizing_func = FUNC2(&h->fd);

	return h;
}