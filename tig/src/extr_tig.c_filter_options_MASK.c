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
 int /*<<< orphan*/  FUNC0 (char const***,char const*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const***,char*,char*,char const**) ; 
 char const** opt_cmdline_args ; 
 char const** opt_file_args ; 
 char const** opt_rev_args ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const**) ; 

__attribute__((used)) static void
FUNC5(const char *argv[], bool rev_parse)
{
	const char **flags = NULL;
	int next, flags_pos;

	FUNC4(argv);

	if (!rev_parse) {
		opt_cmdline_args = argv;
		return;
	}

	/* Add known revision arguments in opt_rev_args and use
	 * git-rev-parse to filter out the remaining options.
	 */
	for (next = flags_pos = 0; argv[next]; next++) {
		const char *arg = argv[next];

		if (!FUNC3(arg, "--"))
			while (argv[next])
				argv[flags_pos++] = argv[next++];
		else if (FUNC1(arg, NULL))
			FUNC0(&opt_rev_args, arg);
		else
			argv[flags_pos++] = arg;
	}

	argv[flags_pos] = NULL;

	FUNC2(&opt_file_args, "--no-revs", "--no-flags", argv);
	FUNC2(&flags, "--flags", "--no-revs", argv);

	if (flags) {
		for (next = flags_pos = 0; flags && flags[next]; next++) {
			const char *flag = flags[next];

			if (FUNC1(flag, NULL))
				FUNC0(&opt_rev_args, flag);
			else
				flags[flags_pos++] = flag;
		}

		flags[flags_pos] = NULL;

		opt_cmdline_args = flags;
	}

	FUNC2(&opt_rev_args, "--symbolic", "--revs-only", argv);
}