#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ command; } ;
typedef  TYPE_1__ loc_cmd ;

/* Variables and functions */
 scalar_t__ LC_LOCALE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (char,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* space ; 
 size_t FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(char* line)
{
	size_t i;
	loc_cmd* lcmd = NULL;
	char t;

	if ((line == NULL) || (line[0] == 0))
		return;

	// Skip leading spaces
	i = FUNC4(line, space);

	// Read token (NUL character will be read if EOL)
	t = line[i++];
	if (t == '#')	// Comment
		return;
	if ((t == 0) || ((line[i] != space[0]) && (line[i] != space[1]))) {
		FUNC3("syntax error: '%s'", line);
		return;
	}

	lcmd = FUNC2(t, &line[i]);

	if ((lcmd != NULL) && (lcmd->command != LC_LOCALE))
		// TODO: check return value?
		FUNC0(lcmd);
	else
		FUNC1(lcmd);
}