#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * dialog; } ;

/* Variables and functions */
 scalar_t__ doc ; 
 scalar_t__* filename ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ ui ; 
 scalar_t__ FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	if (FUNC5(filename))
	{
		ui.dialog = NULL;
		if (filename[0] == 0)
			FUNC0();
		else
			FUNC1();
		if (doc)
		{
			FUNC2();
			FUNC3();
			FUNC4();
			FUNC6();
		}
	}
}