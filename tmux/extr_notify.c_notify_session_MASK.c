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
struct session {int dummy; } ;
struct cmd_find_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmd_find_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_find_state*,struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct cmd_find_state*,int /*<<< orphan*/ *,struct session*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct session*) ; 

void
FUNC4(const char *name, struct session *s)
{
	struct cmd_find_state	fs;

	if (FUNC3(s))
		FUNC1(&fs, s, 0);
	else
		FUNC0(&fs, 0);
	FUNC2(name, &fs, NULL, s, NULL, NULL);
}