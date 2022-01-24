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
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static char *
FUNC4(const char *a, const char *b)
{
	char *result;
	result = FUNC3(PATH_MAX * 2 + 1);

	if (b[0] == '/')
	{
		FUNC2(result, b, PATH_MAX);
	}
	else
	{
		FUNC2(result, a, PATH_MAX);
		FUNC0(result, "/");
		FUNC1(result, b, PATH_MAX);
	}
	return result;
}