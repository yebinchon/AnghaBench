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
struct environ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct environ*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,char) ; 
 size_t FUNC3 (char*,char*) ; 
 char* FUNC4 (char const*) ; 

void
FUNC5(struct environ *env, const char *var)
{
	char	*name, *value;

	value = FUNC2(var, '=');
	if (value == NULL)
		return;
	value++;

	name = FUNC4(var);
	name[FUNC3(name, "=")] = '\0';

	FUNC0(env, name, "%s", value);
	FUNC1(name);
}