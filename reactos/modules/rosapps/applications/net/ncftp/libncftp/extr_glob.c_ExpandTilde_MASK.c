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
struct passwd {char* pw_dir; } ;
typedef  char* string ;
typedef  int /*<<< orphan*/  hdir ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char) ; 
 char* LOCAL_PATH_DELIM_STR ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 struct passwd* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(char *pattern, size_t siz)
{
	string pat;
	char *cp, *rest, *firstent;
#if defined(WIN32) || defined(_WINDOWS)
#else
	struct passwd *pw;
#endif
	string hdir;

	if ((pattern[0] == '~') &&
	(FUNC7((int) pattern[1]) || FUNC1(pattern[1]) || (pattern[1] == '\0'))) {
		(void) FUNC2(pat, pattern);
		if ((cp = FUNC3(pat)) != NULL) {
			*cp = 0;
			rest = cp + 1;	/* Remember stuff after the ~/ part. */
		} else {
			rest = NULL;	/* Was just a ~ or ~username.  */
		}
		if (pat[1] == '\0') {
			/* Was just a ~ or ~/rest type.  */
			FUNC0(hdir, sizeof(hdir));
			firstent = hdir;
		} else {
#if defined(WIN32) || defined(_WINDOWS)
			return;
#else
			/* Was just a ~username or ~username/rest type.  */
			pw = FUNC6(pat + 1);
			if (pw != NULL)
				firstent = pw->pw_dir;
			else
				return;		/* Bad user -- leave it alone. */
#endif
		}

		(void) FUNC5(pattern, firstent, siz);
		if (rest != NULL) {
			(void) FUNC4(pattern, LOCAL_PATH_DELIM_STR, siz);
			(void) FUNC4(pattern, rest, siz);
		}
	}
}