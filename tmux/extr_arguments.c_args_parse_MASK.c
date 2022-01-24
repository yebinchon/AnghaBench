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
struct args {int argc; int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct args*) ; 
 int /*<<< orphan*/  FUNC1 (struct args*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int FUNC3 (int,char**,char const*) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int) ; 
 struct args* FUNC5 (int,int) ; 

struct args *
FUNC6(const char *template, int argc, char **argv)
{
	struct args	*args;
	int		 opt;

	args = FUNC5(1, sizeof *args);

	optreset = 1;
	optind = 1;

	while ((opt = FUNC3(argc, argv, template)) != -1) {
		if (opt < 0)
			continue;
		if (opt == '?' || FUNC4(template, opt) == NULL) {
			FUNC0(args);
			return (NULL);
		}
		FUNC1(args, opt, optarg);
	}
	argc -= optind;
	argv += optind;

	args->argc = argc;
	args->argv = FUNC2(argc, argv);

	return (args);
}