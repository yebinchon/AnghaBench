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
struct cmd {TYPE_1__* entry; int /*<<< orphan*/  args; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

char *
FUNC4(struct cmd *cmd)
{
	char	*out, *s;

	s = FUNC0(cmd->args);
	if (*s != '\0')
		FUNC2(&out, "%s %s", cmd->entry->name, s);
	else
		out = FUNC3(cmd->entry->name);
	FUNC1(s);

	return (out);
}