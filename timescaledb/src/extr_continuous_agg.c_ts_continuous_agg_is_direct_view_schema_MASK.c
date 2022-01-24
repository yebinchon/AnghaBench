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
struct TYPE_3__ {int /*<<< orphan*/  direct_view_schema; } ;
typedef  TYPE_1__ FormData_continuous_agg ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static inline bool
FUNC1(FormData_continuous_agg *data, const char *schema)
{
	return FUNC0(&data->direct_view_schema, schema);
}