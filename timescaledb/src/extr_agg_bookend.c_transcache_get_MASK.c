#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  cmp_func_cache; int /*<<< orphan*/  cmp_type_cache; int /*<<< orphan*/  value_type_cache; } ;
typedef  TYPE_2__ TransCache ;
struct TYPE_8__ {TYPE_1__* flinfo; } ;
struct TYPE_6__ {scalar_t__ fn_extra; int /*<<< orphan*/  fn_mcxt; } ;
typedef  TYPE_3__* FunctionCallInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static TransCache *
FUNC3(FunctionCallInfo fcinfo)
{
	TransCache *my_extra = (TransCache *) fcinfo->flinfo->fn_extra;

	if (my_extra == NULL)
	{
		fcinfo->flinfo->fn_extra = FUNC0(fcinfo->flinfo->fn_mcxt, sizeof(TransCache));
		my_extra = (TransCache *) fcinfo->flinfo->fn_extra;
		FUNC2(&my_extra->value_type_cache);
		FUNC2(&my_extra->cmp_type_cache);
		FUNC1(&my_extra->cmp_func_cache);
	}
	return my_extra;
}