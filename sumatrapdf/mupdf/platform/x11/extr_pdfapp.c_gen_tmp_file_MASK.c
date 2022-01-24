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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static int FUNC4(char *buf, int len)
{
	int i;
	char *name = FUNC3(buf, '/');

	if (name == NULL)
		name = FUNC3(buf, '\\');

	if (name != NULL)
		name++;
	else
		name = buf;

	for (i = 0; i < 10000; i++)
	{
		FILE *f;
		FUNC2(name, "tmp%04d", i);
		f = FUNC1(buf, "r");
		if (f == NULL)
			return 1;
		FUNC0(f);
	}

	return 0;
}