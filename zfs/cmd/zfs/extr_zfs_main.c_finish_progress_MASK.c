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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * pt_header ; 
 scalar_t__ pt_shown ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3(char *done)
{
	if (pt_shown) {
		(void) FUNC2("%s\n", done);
		(void) FUNC0(stdout);
	}
	FUNC1(pt_header);
	pt_header = NULL;
}