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
struct TYPE_3__ {int /*<<< orphan*/  msg; } ;
typedef  TYPE_1__* ResponsePtr ;
typedef  int /*<<< orphan*/  Response ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

ResponsePtr
FUNC3(void)
{
	ResponsePtr rp;

	rp = (ResponsePtr) FUNC2(FUNC1(1), sizeof(Response));
	if (rp != NULL)
		FUNC0(&rp->msg);
	return (rp);
}