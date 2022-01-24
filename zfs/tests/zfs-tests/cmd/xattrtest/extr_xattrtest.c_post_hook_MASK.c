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
 int FUNC0 () ; 
 scalar_t__ dropcaches ; 
 int FUNC1 (char*,char**) ; 
 char* script ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ synccaches ; 

__attribute__((used)) static int
FUNC3(char *phase)
{
	char *argv[3] = { script, phase, (char *)0 };
	int rc;

	if (synccaches)
		FUNC2();

	if (dropcaches) {
		rc = FUNC0();
		if (rc)
			return (rc);
	}

	rc = FUNC1(script, argv);
	if (rc)
		return (rc);

	return (0);
}