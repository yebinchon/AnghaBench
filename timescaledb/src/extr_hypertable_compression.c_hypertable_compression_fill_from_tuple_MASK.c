#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  desc; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_6__ {void* orderby_nullsfirst; void* orderby_asc; void* orderby_column_index; void* segmentby_column_index; void* algo_id; int /*<<< orphan*/  attname; int /*<<< orphan*/  hypertable_id; } ;
typedef  TYPE_2__ FormData_hypertable_compression ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_hypertable_compression_algo_id ; 
 int /*<<< orphan*/  Anum_hypertable_compression_attname ; 
 int /*<<< orphan*/  Anum_hypertable_compression_hypertable_id ; 
 int /*<<< orphan*/  Anum_hypertable_compression_orderby_asc ; 
 int /*<<< orphan*/  Anum_hypertable_compression_orderby_column_index ; 
 int /*<<< orphan*/  Anum_hypertable_compression_orderby_nullsfirst ; 
 int /*<<< orphan*/  Anum_hypertable_compression_segmentby_column_index ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int Natts_hypertable_compression ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(FormData_hypertable_compression *fd, TupleInfo *ti)
{
	Datum values[Natts_hypertable_compression];
	bool isnulls[Natts_hypertable_compression];

	FUNC6(ti->tuple, ti->desc, values, isnulls);

	FUNC0(!isnulls[FUNC1(Anum_hypertable_compression_hypertable_id)]);
	FUNC0(!isnulls[FUNC1(Anum_hypertable_compression_attname)]);
	FUNC0(!isnulls[FUNC1(Anum_hypertable_compression_algo_id)]);

	fd->hypertable_id =
		FUNC4(values[FUNC1(Anum_hypertable_compression_hypertable_id)]);
	FUNC7(&fd->attname,
		   FUNC5(values[FUNC1(Anum_hypertable_compression_attname)]),
		   NAMEDATALEN);
	fd->algo_id =
		FUNC3(values[FUNC1(Anum_hypertable_compression_algo_id)]);

	if (isnulls[FUNC1(Anum_hypertable_compression_segmentby_column_index)])
		fd->segmentby_column_index = 0;
	else
		fd->segmentby_column_index = FUNC3(
			values[FUNC1(Anum_hypertable_compression_segmentby_column_index)]);

	if (isnulls[FUNC1(Anum_hypertable_compression_orderby_column_index)])
		fd->orderby_column_index = 0;
	else
	{
		FUNC0(!isnulls[FUNC1(Anum_hypertable_compression_orderby_asc)]);
		FUNC0(!isnulls[FUNC1(Anum_hypertable_compression_orderby_nullsfirst)]);

		fd->orderby_column_index = FUNC3(
			values[FUNC1(Anum_hypertable_compression_orderby_column_index)]);
		fd->orderby_asc =
			FUNC2(values[FUNC1(Anum_hypertable_compression_orderby_asc)]);
		fd->orderby_nullsfirst = FUNC2(
			values[FUNC1(Anum_hypertable_compression_orderby_nullsfirst)]);
	}
}