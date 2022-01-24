#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  Tablespaces ;
typedef  int /*<<< orphan*/  ScanKeyData ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_tablespace_hypertable_id_tablespace_name_idx_hypertable_id ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TABLESPACE_DEFAULT_CAPACITY ; 
 int /*<<< orphan*/  TABLESPACE_HYPERTABLE_ID_TABLESPACE_NAME_IDX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tablespace_tuple_found ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

Tablespaces *
FUNC4(int32 hypertable_id)
{
	Tablespaces *tspcs = FUNC3(TABLESPACE_DEFAULT_CAPACITY);
	ScanKeyData scankey[1];

	FUNC1(&scankey[0],
				Anum_tablespace_hypertable_id_tablespace_name_idx_hypertable_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(hypertable_id));

	FUNC2(TABLESPACE_HYPERTABLE_ID_TABLESPACE_NAME_IDX,
							 scankey,
							 1,
							 tablespace_tuple_found,
							 NULL,
							 tspcs,
							 0,
							 AccessShareLock);

	return tspcs;
}