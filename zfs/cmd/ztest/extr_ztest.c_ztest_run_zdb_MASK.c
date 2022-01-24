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
struct TYPE_2__ {int zo_verbose; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXNAMELEN ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* spa_config_path ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,char*,char*,char*,char*) ; 
 char* FUNC9 (char*,char*) ; 
 char* FUNC10 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int const) ; 
 scalar_t__ ztest_dump_core ; 
 int /*<<< orphan*/  FUNC12 (char*,int const) ; 
 TYPE_1__ ztest_opts ; 

__attribute__((used)) static void
FUNC13(char *pool)
{
	int status;
	char *bin;
	char *zdb;
	char *zbuf;
	const int len = MAXPATHLEN + MAXNAMELEN + 20;
	FILE *fp;

	bin = FUNC10(len, UMEM_NOFAIL);
	zdb = FUNC10(len, UMEM_NOFAIL);
	zbuf = FUNC10(1024, UMEM_NOFAIL);

	FUNC12(bin, len);

	(void) FUNC8(zdb,
	    "%s -bcc%s%s -G -d -Y -U %s %s",
	    bin,
	    ztest_opts.zo_verbose >= 3 ? "s" : "",
	    ztest_opts.zo_verbose >= 4 ? "v" : "",
	    spa_config_path,
	    pool);

	if (ztest_opts.zo_verbose >= 5)
		(void) FUNC7("Executing %s\n", FUNC9(zdb, "zdb "));

	fp = FUNC6(zdb, "r");

	while (FUNC4(zbuf, 1024, fp) != NULL)
		if (ztest_opts.zo_verbose >= 3)
			(void) FUNC7("%s", zbuf);

	status = FUNC5(fp);

	if (status == 0)
		goto out;

	ztest_dump_core = 0;
	if (FUNC1(status))
		FUNC3(0, "'%s' exit code %d", zdb, FUNC0(status));
	else
		FUNC3(0, "'%s' died with signal %d", zdb, FUNC2(status));
out:
	FUNC11(bin, len);
	FUNC11(zdb, len);
	FUNC11(zbuf, 1024);
}