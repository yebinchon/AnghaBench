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
typedef  int /*<<< orphan*/  iostat_cbdata_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4(int argc, char **argv, char *pool_name,
    iostat_cbdata_t *cb)
{
	int i;
	char *name;
	char *str;
	for (i = 0; i < argc; i++) {
		name = argv[i];

		if (FUNC3(name))
			str = FUNC2("pool");
		else if (FUNC0(1, &name, pool_name, cb))
			str = FUNC2("vdev in this pool");
		else if (FUNC0(1, &name, NULL, cb))
			str = FUNC2("vdev in another pool");
		else
			str = FUNC2("unknown");

		FUNC1(stderr, "\t%s (%s)\n", name, str);
	}
}