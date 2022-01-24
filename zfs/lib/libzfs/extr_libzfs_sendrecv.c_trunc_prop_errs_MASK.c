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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(int truncated)
{
	FUNC0(truncated != 0);

	if (truncated == 1)
		(void) FUNC2(stderr, "%s", FUNC1(TEXT_DOMAIN,
		    "1 more property could not be set\n"));
	else
		(void) FUNC2(stderr, FUNC1(TEXT_DOMAIN,
		    "%d more properties could not be set\n"), truncated);
}