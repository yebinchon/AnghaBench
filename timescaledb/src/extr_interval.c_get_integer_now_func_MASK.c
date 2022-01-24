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
struct TYPE_5__ {int /*<<< orphan*/  integer_now_func; int /*<<< orphan*/  integer_now_func_schema; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ Dimension ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  noarg_integer_now_func_filter ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Oid
FUNC5(Dimension *open_dim)
{
	Oid rettype;
	Oid now_func;

	rettype = FUNC3(open_dim);

	FUNC0(FUNC1(rettype));

	now_func = FUNC4(FUNC2(open_dim->fd.integer_now_func_schema),
									   FUNC2(open_dim->fd.integer_now_func),
									   NULL,
									   noarg_integer_now_func_filter,
									   &rettype);
	return now_func;
}