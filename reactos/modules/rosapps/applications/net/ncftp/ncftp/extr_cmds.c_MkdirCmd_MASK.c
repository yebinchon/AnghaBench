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
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int const,char const** const,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  gConn ; 
 int gOptInd ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  kErrMKDFailed ; 
 int kRecursiveNo ; 
 int kRecursiveYes ; 

void
FUNC7(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	int i;
	int opt;
	int result;
	int recurseFlag = kRecursiveNo;

	FUNC0(gUnusedArg);
	FUNC5();
	while ((opt = FUNC4(argc, argv, "p")) >= 0) {
		if (opt == 'p') {
			/* Try creating intermediate directories if they
			 * don't exist.
			 *
			 * For example if only /pub/stuff existed, and you
			 * do a "mkdir -p /pub/stuff/a/b/c", the "a" and "b"
			 * directories would also be created.
			 */
			recurseFlag = kRecursiveYes;
		} else {
			FUNC6(cmdp);
			return;
		}
	}

	for (i=gOptInd; i<argc; i++) {
		result = FUNC1(&gConn, argv[i], recurseFlag);
		if (result < 0)
			FUNC2(&gConn, result, kErrMKDFailed, "Could not mkdir", argv[i]);
	}

	/* Really should just flush only the modified directories... */
	FUNC3();
}