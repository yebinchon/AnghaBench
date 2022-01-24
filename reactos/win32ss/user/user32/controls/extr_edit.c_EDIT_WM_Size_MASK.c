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
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ SIZE_MAXIMIZED ; 
 scalar_t__ SIZE_RESTORED ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC3(EDITSTATE *es, UINT action)
{
	if ((action == SIZE_MAXIMIZED) || (action == SIZE_RESTORED)) {
		RECT rc;
		FUNC2(es->hwndSelf, &rc);
		FUNC0(es, &rc);
		FUNC1(es, NULL, TRUE);
	}
}