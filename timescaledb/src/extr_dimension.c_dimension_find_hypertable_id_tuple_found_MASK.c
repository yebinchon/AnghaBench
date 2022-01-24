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
struct TYPE_3__ {int /*<<< orphan*/  desc; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
typedef  int /*<<< orphan*/  ScanTupleResult ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_dimension_hypertable_id ; 
 int /*<<< orphan*/  SCAN_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static ScanTupleResult
FUNC1(TupleInfo *ti, void *data)
{
	int32 *hypertable_id = data;
	bool isnull = false;

	*hypertable_id = FUNC0(ti->tuple, Anum_dimension_hypertable_id, ti->desc, &isnull);

	return SCAN_DONE;
}