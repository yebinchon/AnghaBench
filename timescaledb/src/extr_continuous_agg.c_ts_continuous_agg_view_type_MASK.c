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
struct TYPE_3__ {int /*<<< orphan*/  direct_view_name; int /*<<< orphan*/  direct_view_schema; int /*<<< orphan*/  partial_view_name; int /*<<< orphan*/  partial_view_schema; int /*<<< orphan*/  user_view_name; int /*<<< orphan*/  user_view_schema; } ;
typedef  TYPE_1__ FormData_continuous_agg ;
typedef  int /*<<< orphan*/  ContinuousAggViewType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  ContinuousAggDirectView ; 
 int /*<<< orphan*/  ContinuousAggNone ; 
 int /*<<< orphan*/  ContinuousAggPartialView ; 
 int /*<<< orphan*/  ContinuousAggUserView ; 

ContinuousAggViewType
FUNC1(FormData_continuous_agg *data, const char *schema, const char *name)
{
	if (FUNC0(&data->user_view_schema, schema) &&
		FUNC0(&data->user_view_name, name))
		return ContinuousAggUserView;
	else if (FUNC0(&data->partial_view_schema, schema) &&
			 FUNC0(&data->partial_view_name, name))
		return ContinuousAggPartialView;
	else if (FUNC0(&data->direct_view_schema, schema) &&
			 FUNC0(&data->direct_view_name, name))
		return ContinuousAggDirectView;
	else
		return ContinuousAggNone;
}