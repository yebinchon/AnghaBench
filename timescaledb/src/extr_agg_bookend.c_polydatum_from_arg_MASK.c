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
struct TYPE_6__ {int /*<<< orphan*/  flinfo; } ;
struct TYPE_5__ {int /*<<< orphan*/  datum; int /*<<< orphan*/  is_null; int /*<<< orphan*/  type_oid; } ;
typedef  TYPE_1__ PolyDatum ;
typedef  TYPE_2__* FunctionCallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static PolyDatum
FUNC4(int argno, FunctionCallInfo fcinfo)
{
	PolyDatum value;

	value.type_oid = FUNC3(fcinfo->flinfo, argno);
	value.is_null = FUNC0(argno);
	if (!value.is_null)
		value.datum = FUNC1(argno);
	else
		value.datum = FUNC2(NULL);
	return value;
}