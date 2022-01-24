#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  int ContinuousAggViewType ;
typedef  TYPE_1__ ContinuousAgg ;

/* Variables and functions */
#define  ContinuousAggDirectView 130 
#define  ContinuousAggPartialView 129 
#define  ContinuousAggUserView 128 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 

void
FUNC4(ContinuousAgg *ca, const char *schema, const char *name)
{
	ContinuousAggViewType vtyp;
	vtyp = FUNC3(&ca->data, schema, name);
	switch (vtyp)
	{
		case ContinuousAggUserView:
			FUNC0(ca, false /* The user view has already been dropped */);
			break;
		case ContinuousAggPartialView:
		case ContinuousAggDirectView:
			FUNC1(ca);
			break;
		default:
			FUNC2(ERROR, "unknown continuous aggregate view type");
	}
}