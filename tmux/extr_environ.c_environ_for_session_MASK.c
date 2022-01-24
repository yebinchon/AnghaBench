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
struct session {int id; int /*<<< orphan*/  environ; } ;
struct environ {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct environ*) ; 
 struct environ* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct environ*,char*,char*,char const*,...) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  global_environ ; 
 int /*<<< orphan*/  global_options ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  socket_path ; 

struct environ *
FUNC5(struct session *s, int no_TERM)
{
	struct environ	*env;
	const char	*value;
	int		 idx;

	env = FUNC1();
	FUNC0(global_environ, env);
	if (s != NULL)
		FUNC0(s->environ, env);

	if (!no_TERM) {
		value = FUNC4(global_options, "default-terminal");
		FUNC2(env, "TERM", "%s", value);
	}

	if (s != NULL)
		idx = s->id;
	else
		idx = -1;
	FUNC2(env, "TMUX", "%s,%ld,%d", socket_path, (long)FUNC3(), idx);

	return (env);
}