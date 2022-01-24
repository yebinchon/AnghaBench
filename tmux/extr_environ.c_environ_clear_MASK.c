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
struct environ_entry {int /*<<< orphan*/ * value; int /*<<< orphan*/  name; } ;
struct environ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct environ*,struct environ_entry*) ; 
 int /*<<< orphan*/  environ ; 
 struct environ_entry* FUNC1 (struct environ*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct environ_entry* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

void
FUNC5(struct environ *env, const char *name)
{
	struct environ_entry	*envent;

	if ((envent = FUNC1(env, name)) != NULL) {
		FUNC2(envent->value);
		envent->value = NULL;
	} else {
		envent = FUNC3(sizeof *envent);
		envent->name = FUNC4(name);
		envent->value = NULL;
		FUNC0(environ, env, envent);
	}
}