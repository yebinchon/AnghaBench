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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 char* gl_home_dir ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int gl_vi_preferred ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	FILE *fp;
	char path[256];

	/* If the user has a ~/.inputrc file,
	 * check it to see if it has a line like
	 * "set editing-mode vi".  If it does,
	 * we know that the user wants vi
	 * emulation rather than emacs.  If the
	 * file doesn't exist, it's no big
	 * deal since we can also check the
	 * $EDITOR environment variable.
	 */
	FUNC3(NULL);
	if (gl_home_dir == NULL)
		return;

#ifdef HAVE_SNPRINTF
	snprintf(path, sizeof(path), "%s/%s", gl_home_dir, ".inputrc");
#else
	if (sizeof(path) >= (FUNC6(gl_home_dir) + FUNC6("/.inputrc")))
		return;

	FUNC5(path, "%s%s", gl_home_dir, "/.inputrc");
#endif

	fp = FUNC2(
		path,
#if defined(__windows__) || defined(MSDOS)
		"rt"
#else
		"r"
#endif
	);

	if (fp == NULL)
		return;

	while (FUNC1(path, sizeof(path) - 1, fp) != NULL) {
		if ((FUNC7(path, "editing-mode") != NULL) && (FUNC7(path, "vi") != NULL)) {
			gl_vi_preferred = 1;
			break;
		}
	}

	(void) FUNC0(fp);
}