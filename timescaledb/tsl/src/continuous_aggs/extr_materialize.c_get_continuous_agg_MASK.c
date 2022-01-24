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
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Form_continuous_agg ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_continuous_agg_pkey_mat_hypertable_id ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CONTINUOUS_AGG ; 
 int /*<<< orphan*/  CONTINUOUS_AGG_PKEY ; 
 int /*<<< orphan*/  CONTINUOUS_AGG_TABLE_NAME ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  continuous_agg_tuple_found ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static Form_continuous_agg
FUNC3(int32 mat_hypertable_id)
{
	Form_continuous_agg cagg = NULL;
	ScanKeyData scankey[1];
	bool found;

	FUNC1(&scankey[0],
				Anum_continuous_agg_pkey_mat_hypertable_id,
				BTEqualStrategyNumber,
				F_INT4EQ,
				FUNC0(mat_hypertable_id));

	found = FUNC2(CONTINUOUS_AGG,
								CONTINUOUS_AGG_PKEY,
								scankey,
								1,
								continuous_agg_tuple_found,
								AccessShareLock,
								CONTINUOUS_AGG_TABLE_NAME,
								&cagg);

	if (!found)
		return NULL;

	return cagg;
}