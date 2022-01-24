#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int gDoneApplication ; 
 int /*<<< orphan*/  gUnusedArg ; 

void
FUNC1(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	FUNC0(gUnusedArg);
	gDoneApplication = 1;
}