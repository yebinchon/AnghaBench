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
struct TYPE_2__ {scalar_t__ connected; } ;
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ gConn ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	FUNC0(gUnusedArg);
	if (gConn.connected == 0)
		(void) FUNC2("Already closed.\n");
	else
		FUNC1();
}