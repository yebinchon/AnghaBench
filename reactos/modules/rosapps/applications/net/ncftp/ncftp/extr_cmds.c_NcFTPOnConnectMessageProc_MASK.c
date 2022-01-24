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
typedef  int /*<<< orphan*/ * FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(const FTPCIPtr cipUNUSED, ResponsePtr rp)
{
	gUnusedArg = (cipUNUSED != NULL);
	(void) FUNC2("\n");
	FUNC1(&rp->msg);
	FUNC0("Logging in...");
}