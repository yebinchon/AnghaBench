#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ HttpResponseState ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

HttpResponseState *
FUNC5()
{
	MemoryContext context =
		FUNC0(CurrentMemoryContext, "Http Response", ALLOCSET_DEFAULT_SIZES);
	MemoryContext old = FUNC1(context);
	HttpResponseState *ret = FUNC3(sizeof(HttpResponseState));

	FUNC2(ret, 0, sizeof(*ret));

	ret->context = context;
	FUNC4(ret);
	FUNC1(old);
	return ret;
}