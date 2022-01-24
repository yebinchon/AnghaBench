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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_IOC_CHANNEL_PROGRAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char* const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(const char *pool)
{
	const char *program =
	    "arg = ...\n"
	    "argv = arg[\"argv\"]\n"
	    "return argv[1]";
	char *const argv[1] = { "Hello World!" };
	nvlist_t *required = FUNC6();
	nvlist_t *optional = FUNC6();
	nvlist_t *args = FUNC6();

	FUNC3(required, "program", program);
	FUNC4(args, "argv", argv, 1);
	FUNC2(required, "arg", args);

	FUNC1(optional, "sync", B_TRUE);
	FUNC5(optional, "instrlimit", 1000 * 1000);
	FUNC5(optional, "memlimit", 8192 * 1024);

	FUNC0(ZFS_IOC_CHANNEL_PROGRAM, pool, required, optional, 0);

	FUNC7(args);
	FUNC7(optional);
	FUNC7(required);
}