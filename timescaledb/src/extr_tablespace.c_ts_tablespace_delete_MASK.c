#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_3__ {int stopcount; int /*<<< orphan*/  database_info; } ;
typedef  TYPE_1__ TablespaceScanInfo ;
typedef  int /*<<< orphan*/  ScanKeyData ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_tablespace_hypertable_id_tablespace_name_idx_hypertable_id ; 
 int /*<<< orphan*/  Anum_tablespace_hypertable_id_tablespace_name_idx_tablespace_name ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TABLESPACE_HYPERTABLE_ID_TABLESPACE_NAME_IDX ; 
 int /*<<< orphan*/  namein ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tablespace_tuple_delete ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(int32 hypertable_id, const char *tspcname)

{
	ScanKeyData scankey[2];
	TablespaceScanInfo info = {
		.database_info = FUNC6(),
		.stopcount = (NULL != tspcname),
	};
	int num_deleted, nkeys = 0;

	FUNC4(&scankey[nkeys++],
				Anum_tablespace_hypertable_id_tablespace_name_idx_hypertable_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC3(hypertable_id));

	if (NULL != tspcname)
		FUNC4(&scankey[nkeys++],
					Anum_tablespace_hypertable_id_tablespace_name_idx_tablespace_name,
					BTEqualStrategyNumber,
					F_NAMEEQ,
					FUNC2(namein, FUNC0(tspcname)));

	num_deleted = FUNC5(TABLESPACE_HYPERTABLE_ID_TABLESPACE_NAME_IDX,
										   scankey,
										   nkeys,
										   tablespace_tuple_delete,
										   NULL,
										   &info,
										   0,
										   RowExclusiveLock);

	if (num_deleted > 0)
		FUNC1();

	return num_deleted;
}