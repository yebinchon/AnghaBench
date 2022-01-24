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
struct TYPE_4__ {int /*<<< orphan*/  user_view_schema; int /*<<< orphan*/  user_view_name; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ContinuousAgg ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC5(ContinuousAgg *agg)
{
	Oid view_relid =
		FUNC4(FUNC0(agg->data.user_view_name),
						  FUNC3(FUNC0(agg->data.user_view_schema), false));
	if (!FUNC1(view_relid))
		FUNC2(ERROR, "could not find user view for continuous agg");
	return view_relid;
}