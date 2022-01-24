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
struct TYPE_3__ {scalar_t__ custom_ps; } ;
typedef  TYPE_1__ CustomScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2(CustomScanState *node)
{
	if (node->custom_ps != NIL)
	{
		FUNC0(FUNC1(node->custom_ps));
	}
}