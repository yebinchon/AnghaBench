#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_4__ {char const* colname; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  DimensionInfo ;
typedef  TYPE_1__ ChunkSizingInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INT8OID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(int32 hypertable_id, Oid mat_tbloid, const char *matpartcolname,
					   int64 mat_tbltimecol_interval)
{
	bool created;
	int flags = 0;
	NameData mat_tbltimecol;
	DimensionInfo *time_dim_info;
	ChunkSizingInfo *chunk_sizing_info;
	FUNC4(&mat_tbltimecol, matpartcolname);
	time_dim_info = FUNC6(mat_tbloid,
												  &mat_tbltimecol,
												  FUNC0(mat_tbltimecol_interval),
												  INT8OID,
												  InvalidOid);
	// TODO fix this after change in C interface
	chunk_sizing_info = FUNC5(mat_tbloid);
	chunk_sizing_info->colname = matpartcolname;
	created = FUNC7(mat_tbloid,
											 hypertable_id,
											 flags,
											 time_dim_info,
											 NULL,
											 NULL,
											 NULL,
											 chunk_sizing_info);
	if (!created)
	{
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INTERNAL_ERROR),
				 FUNC3("continuous agg could not create hypertable for relid")));
	}
}