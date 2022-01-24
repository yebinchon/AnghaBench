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
struct TYPE_3__ {scalar_t__ num_filtered; int /*<<< orphan*/  hcache; int /*<<< orphan*/  userid; int /*<<< orphan*/  database_info; } ;
typedef  TYPE_1__ TablespaceScanInfo ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_tablespace_tablespace_name ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  INVALID_INDEXID ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  namein ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tablespace_tuple_delete ; 
 int /*<<< orphan*/  tablespace_tuple_owner_filter ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10(const char *tspcname, Oid userid)
{
	ScanKeyData scankey[1];
	TablespaceScanInfo info = {
		.database_info = FUNC8(),
		.hcache = FUNC9(),
		.userid = userid,
	};
	int num_deleted;

	FUNC3(&scankey[0],
				Anum_tablespace_tablespace_name,
				BTEqualStrategyNumber,
				F_NAMEEQ,
				FUNC2(namein, FUNC0(tspcname)));

	num_deleted = FUNC6(INVALID_INDEXID,
										   scankey,
										   1,
										   tablespace_tuple_delete,
										   tablespace_tuple_owner_filter,
										   &info,
										   0,
										   RowExclusiveLock);
	FUNC7(info.hcache);

	if (num_deleted > 0)
		FUNC1();

	if (info.num_filtered > 0)
		FUNC4(NOTICE,
				(FUNC5("tablespace \"%s\" remains attached to %d hypertable(s) due to lack of "
						"permissions",
						tspcname,
						info.num_filtered)));

	return num_deleted;
}