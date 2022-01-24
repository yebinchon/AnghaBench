#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  mctx; int /*<<< orphan*/  desc; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_2__ TupleInfo ;
struct TYPE_7__ {int /*<<< orphan*/  column_name; int /*<<< orphan*/  interval_length; void* num_slices; int /*<<< orphan*/  integer_now_func; int /*<<< orphan*/  integer_now_func_schema; int /*<<< orphan*/  partitioning_func; int /*<<< orphan*/  partitioning_func_schema; int /*<<< orphan*/  column_type; int /*<<< orphan*/  aligned; void* hypertable_id; void* id; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ fd; int /*<<< orphan*/  column_attno; int /*<<< orphan*/  partitioning; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_3__ Dimension ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_dimension_aligned ; 
 int Anum_dimension_column_name ; 
 int Anum_dimension_column_type ; 
 int Anum_dimension_hypertable_id ; 
 int Anum_dimension_id ; 
 int Anum_dimension_integer_now_func ; 
 int Anum_dimension_integer_now_func_schema ; 
 int Anum_dimension_interval_length ; 
 int Anum_dimension_num_slices ; 
 int Anum_dimension_partitioning_func ; 
 int Anum_dimension_partitioning_func_schema ; 
 size_t FUNC0 (int) ; 
 scalar_t__ DIMENSION_TYPE_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int Natts_dimension ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(Dimension *d, TupleInfo *ti, Oid main_table_relid)
{
	Datum values[Natts_dimension];
	bool isnull[Natts_dimension];

	/*
	 * With need to use heap_deform_tuple() rather than GETSTRUCT(), since
	 * optional values may be omitted from the tuple.
	 */
	FUNC11(ti->tuple, ti->desc, values, isnull);

	d->type = FUNC9(ti);
	d->fd.id = FUNC3(values[FUNC0(Anum_dimension_id)]);
	d->fd.hypertable_id =
		FUNC3(values[FUNC0(Anum_dimension_hypertable_id)]);
	d->fd.aligned = FUNC1(values[FUNC0(Anum_dimension_aligned)]);
	d->fd.column_type =
		FUNC6(values[FUNC0(Anum_dimension_column_type)]);
	FUNC12(&d->fd.column_name,
		   FUNC5(values[FUNC0(Anum_dimension_column_name)]),
		   NAMEDATALEN);

	if (!isnull[Anum_dimension_partitioning_func_schema - 1] &&
		!isnull[Anum_dimension_partitioning_func - 1])
	{
		MemoryContext old;

		d->fd.num_slices =
			FUNC2(values[FUNC0(Anum_dimension_num_slices)]);

		FUNC12(&d->fd.partitioning_func_schema,
			   FUNC5(
				   values[FUNC0(Anum_dimension_partitioning_func_schema)]),
			   NAMEDATALEN);
		FUNC12(&d->fd.partitioning_func,
			   FUNC5(values[FUNC0(Anum_dimension_partitioning_func)]),
			   NAMEDATALEN);

		old = FUNC7(ti->mctx);
		d->partitioning = FUNC14(FUNC8(d->fd.partitioning_func_schema),
													  FUNC8(d->fd.partitioning_func),
													  FUNC8(d->fd.column_name),
													  d->type,
													  main_table_relid);
		FUNC7(old);
	}

	if (!isnull[Anum_dimension_integer_now_func_schema - 1] &&
		!isnull[Anum_dimension_integer_now_func - 1])
	{
		FUNC13(&d->fd.integer_now_func_schema,
				FUNC5(
					values[FUNC0(Anum_dimension_integer_now_func_schema)]));
		FUNC13(&d->fd.integer_now_func,
				FUNC5(values[FUNC0(Anum_dimension_integer_now_func)]));
	}

	if (d->type == DIMENSION_TYPE_CLOSED)
		d->fd.num_slices = FUNC2(values[Anum_dimension_num_slices - 1]);
	else
		d->fd.interval_length =
			FUNC4(values[FUNC0(Anum_dimension_interval_length)]);

	d->column_attno = FUNC10(main_table_relid, FUNC8(d->fd.column_name));
}