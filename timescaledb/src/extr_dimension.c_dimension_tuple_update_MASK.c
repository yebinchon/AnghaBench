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
struct TYPE_7__ {TYPE_4__* tuple; int /*<<< orphan*/  scanrel; int /*<<< orphan*/  desc; } ;
typedef  TYPE_2__ TupleInfo ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_6__ {scalar_t__ num_slices; scalar_t__ interval_length; int /*<<< orphan*/  integer_now_func_schema; int /*<<< orphan*/  integer_now_func; int /*<<< orphan*/  partitioning_func_schema; int /*<<< orphan*/  partitioning_func; int /*<<< orphan*/  column_type; int /*<<< orphan*/  column_name; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__ Dimension ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_dimension_column_name ; 
 int /*<<< orphan*/  Anum_dimension_column_type ; 
 int /*<<< orphan*/  Anum_dimension_integer_now_func ; 
 int /*<<< orphan*/  Anum_dimension_integer_now_func_schema ; 
 int /*<<< orphan*/  Anum_dimension_interval_length ; 
 int /*<<< orphan*/  Anum_dimension_num_slices ; 
 int /*<<< orphan*/  Anum_dimension_partitioning_func ; 
 int /*<<< orphan*/  Anum_dimension_partitioning_func_schema ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int Natts_dimension ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCAN_DONE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ScanTupleResult
FUNC13(TupleInfo *ti, void *data)
{
	Dimension *dim = data;
	HeapTuple tuple;
	Datum values[Natts_dimension];
	bool nulls[Natts_dimension];
	CatalogSecurityContext sec_ctx;

	FUNC7(ti->tuple, ti->desc, values, nulls);

	FUNC0((dim->fd.num_slices <= 0 && dim->fd.interval_length > 0) ||
		   (dim->fd.num_slices > 0 && dim->fd.interval_length <= 0));

	values[FUNC1(Anum_dimension_column_name)] =
		FUNC4(&dim->fd.column_name);
	values[FUNC1(Anum_dimension_column_type)] =
		FUNC6(dim->fd.column_type);
	values[FUNC1(Anum_dimension_num_slices)] = FUNC2(dim->fd.num_slices);

	if (!nulls[FUNC1(Anum_dimension_partitioning_func)] &&
		!nulls[FUNC1(Anum_dimension_partitioning_func_schema)])
	{
		values[FUNC1(Anum_dimension_partitioning_func)] =
			FUNC4(&dim->fd.partitioning_func);
		values[FUNC1(Anum_dimension_partitioning_func_schema)] =
			FUNC4(&dim->fd.partitioning_func_schema);
	}

	if (*FUNC5(dim->fd.integer_now_func) != '\0' &&
		*FUNC5(dim->fd.integer_now_func_schema) != '\0')
	{
		values[FUNC1(Anum_dimension_integer_now_func)] =
			FUNC4(&dim->fd.integer_now_func);
		values[FUNC1(Anum_dimension_integer_now_func_schema)] =
			FUNC4(&dim->fd.integer_now_func_schema);
		nulls[FUNC1(Anum_dimension_integer_now_func)] = false;
		nulls[FUNC1(Anum_dimension_integer_now_func_schema)] = false;
	}

	if (!nulls[FUNC1(Anum_dimension_interval_length)])
		values[FUNC1(Anum_dimension_interval_length)] =
			FUNC3(dim->fd.interval_length);

	tuple = FUNC8(ti->desc, values, nulls);

	FUNC9(FUNC10(), &sec_ctx);
	FUNC12(ti->scanrel, &ti->tuple->t_self, tuple);
	FUNC11(&sec_ctx);

	return SCAN_DONE;
}