#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  desc; int /*<<< orphan*/  tuple; } ;
typedef  TYPE_1__ TupleInfo ;
struct TYPE_5__ {int /*<<< orphan*/  typeid; int /*<<< orphan*/  value; int /*<<< orphan*/  isnull; } ;
typedef  int /*<<< orphan*/  ScanTupleResult ;
typedef  TYPE_2__ DatumValue ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_metadata_value ; 
 int /*<<< orphan*/  SCAN_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ScanTupleResult
FUNC2(TupleInfo *ti, void *data)
{
	DatumValue *dv = data;

	dv->value = FUNC1(ti->tuple, Anum_metadata_value, ti->desc, &dv->isnull);

	if (!dv->isnull)
		dv->value = FUNC0(dv->value, dv->typeid);

	return SCAN_DONE;
}