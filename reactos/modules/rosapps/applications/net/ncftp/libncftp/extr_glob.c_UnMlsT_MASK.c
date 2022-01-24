#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* longest_int ;
typedef  int /*<<< orphan*/  line ;
struct TYPE_4__ {int mode; long fsize; char ftype; char* fname; int /*<<< orphan*/  perm; void* gid; void* uid; int /*<<< orphan*/  group; int /*<<< orphan*/  owner; int /*<<< orphan*/  ftime; } ;
typedef  TYPE_1__* MLstItemPtr ;
typedef  int /*<<< orphan*/  MLstItem ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 char* SCANF_LONG_LONG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  kModTimeUnknown ; 
 long kSizeUnknown ; 
 int /*<<< orphan*/  FUNC6 (char*,char const* const,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,long*) ; 
 size_t FUNC9 (char const* const) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC11(const char *const line0, const MLstItemPtr mlip)
{
	char *cp, *val, *fact;
	int ec;
	size_t len;
	char line[1024];

	FUNC7(mlip, 0, sizeof(MLstItem));
	mlip->mode = -1;
	mlip->fsize = kSizeUnknown;
	mlip->ftype = '-';
	mlip->ftime = kModTimeUnknown;

	len = FUNC9(line0);
	if (len > (sizeof(line) - 1))
		return (-1);	/* Line too long, sorry. */
	/* This should be re-coded so does not need to make a
	 * copy of the buffer; it could be done in place.
	 */
	FUNC6(line, line0, len + 1);

	/* Skip leading whitespace. */
	for (cp = line; *cp != '\0'; cp++) {
		if (! FUNC5(*cp))
			break;
	}

	while (*cp != '\0') {
		for (fact = cp; ; cp++) {
			if ((*cp == '\0') || (*cp == ' ')) {
				/* protocol violation */
				return (-1);
			}
			if (*cp == '=') {
				/* End of fact name. */
				*cp++ = '\0';
				break;
			}
		}
		for (val = cp; ; cp++) {
			if (*cp == '\0') {
				/* protocol violation */
				return (-1);
			}
			if (*cp == ' ') {
				ec = ' ';
				*cp++ = '\0';
				break;
			} else if (*cp == ';') {
				if (cp[1] == ' ') {
					ec = ' ';
					*cp++ = '\0';
					*cp++ = '\0';
				} else {
					ec = ';';
					*cp++ = '\0';
				}
				break;
			}
		}
		if (FUNC1(fact, "OS.", 3))
			fact += 3;
		if (FUNC0(fact, "type")) {
			if (FUNC0(val, "file")) {
				mlip->ftype = '-';
			} else if (FUNC0(val, "dir")) {
				mlip->ftype = 'd';
			} else if (FUNC0(val, "cdir")) {
				/* not supported: current directory */
				return (-2);
			} else if (FUNC0(val, "pdir")) {
				/* not supported: parent directory */
				return (-2);
			} else {
				/* ? */
				return (-1);
			}
		} else if (FUNC0(fact, "UNIX.mode")) {
			if (val[0] == '0')
				FUNC8(val, "%o", &mlip->mode);
			else
				FUNC8(val, "%i", &mlip->mode);
			if (mlip->mode != (-1))
				mlip->mode &= 00777;
		} else if (FUNC0(fact, "perm")) {
			FUNC2(mlip->perm, val);
		} else if (FUNC0(fact, "size")) {
#if defined(HAVE_LONG_LONG) && defined(SCANF_LONG_LONG)
			(void) sscanf(val, SCANF_LONG_LONG, &mlip->fsize);
#elif defined(HAVE_LONG_LONG) && defined(HAVE_STRTOQ)
			mlip->fsize = (longest_int) strtoq(val, NULL, 0);
#else
			{
				long fsize2 = 0L;

				(void) FUNC8(val, "%ld", &fsize2);
				mlip->fsize = (longest_int) fsize2;
			}
#endif
		} else if (FUNC0(fact, "modify")) {
			mlip->ftime = FUNC3(val);
		} else if (FUNC0(fact, "UNIX.owner")) {
			FUNC2(mlip->owner, val);
		} else if (FUNC0(fact, "UNIX.group")) {
			FUNC2(mlip->group, val);
		} else if (FUNC0(fact, "UNIX.uid")) {
			mlip->uid = FUNC4(val);
		} else if (FUNC0(fact, "UNIX.gid")) {
			mlip->gid = FUNC4(val);
		} else if (FUNC0(fact, "perm")) {
			FUNC2(mlip->perm, val);
		}

		/* End of facts? */
		if (ec == ' ')
			break;
	}

	len = FUNC9(cp);
	if (len > (sizeof(mlip->fname) - 1)) {
		/* Filename too long */
		return (-1);
	}
	FUNC6(mlip->fname, cp, len);

	/* also set linkto here if used */

	return (0);
}