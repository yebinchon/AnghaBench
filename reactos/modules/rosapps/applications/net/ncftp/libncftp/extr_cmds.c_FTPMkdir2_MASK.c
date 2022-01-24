#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int errNo; char const* const buf; int /*<<< orphan*/  lastFTPCmdResultStr; int /*<<< orphan*/  bufSize; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const,int /*<<< orphan*/ ,char*,char const* const,char*,...) ; 
 int FUNC1 (TYPE_1__* const,char const* const) ; 
 int FUNC2 (TYPE_1__* const,char*,char const* const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const* const) ; 
 int /*<<< orphan*/  kDontPerror ; 
 int kErrBadMagic ; 
 int kErrBadParameter ; 
 void* kErrCannotGoToPrevDir ; 
 int kErrInvalidDirParam ; 
 void* kErrMKDFailed ; 
 int /*<<< orphan*/  kLibraryMagic ; 
 int kNoErr ; 
 int const kRecursiveNo ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (char*,char) ; 

int
FUNC9(const FTPCIPtr cip, const char *const newDir, const int recurse, const char *const curDir)
{
	int result, result2;
	char *cp, *newTreeStart, *cp2;
	char dir[512];
	char dir2[512];
	char c;

	if (cip == NULL)
		return (kErrBadParameter);
	if (FUNC6(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	if ((newDir == NULL) || (newDir[0] == '\0')) {
		cip->errNo = kErrInvalidDirParam;
		return (kErrInvalidDirParam);
	}

	/* Preserve old working directory. */
	if ((curDir == NULL) || (curDir[0] == '\0')) {
		/* This hack is nice so you can eliminate an
		 * unnecessary "PWD" command on the server,
		 * since if you already knew what directory
		 * you're in.  We want to minimize the number
		 * of client-server exchanges when feasible.
		 */
		(void) FUNC3(cip, cip->buf, cip->bufSize);
	}

	result = FUNC1(cip, newDir);
	if (result == kNoErr) {
		/* Directory already exists -- but we
		 * must now change back to where we were.
		 */
		result2 = FUNC1(cip, ((curDir == NULL) || (curDir[0] == '\0')) ? cip->buf : curDir);
		if (result2 < 0) {
			result = kErrCannotGoToPrevDir;
			cip->errNo = kErrCannotGoToPrevDir;
			return (result);
		}

		/* Don't need to create it. */
		return (kNoErr);
	}

	if (recurse == kRecursiveNo) {
		result = FUNC2(cip, "MKD %s", newDir);
		if (result > 0) {
			if (result != 2) {
				FUNC0(cip, kDontPerror, "MKD %s failed; [%s]\n", newDir, cip->lastFTPCmdResultStr);
				result = kErrMKDFailed;
				cip->errNo = kErrMKDFailed;
				return (result);
			} else {
				result = kNoErr;
			}
		}
	} else {
		(void) FUNC4(dir, newDir);

		/* Strip trailing slashes. */
		cp = dir + FUNC7(dir) - 1;
		for (;;) {
			if (cp <= dir) {
				if ((newDir == NULL) || (newDir[0] == '\0')) {
					cip->errNo = kErrInvalidDirParam;
					result = kErrInvalidDirParam;
					return (result);
				}
			}
			if ((*cp != '/') && (*cp != '\\')) {
				cp[1] = '\0';
				break;
			}
			--cp;
		}
		(void) FUNC4(dir2, dir);

		if ((FUNC8(dir, '/') == dir) || (FUNC8(dir, '\\') == dir)) {
			/* Special case "mkdir /subdir" */
			result = FUNC2(cip, "MKD %s", dir);
			if (result < 0) {
				return (result);
			}
			if (result != 2) {
				FUNC0(cip, kDontPerror, "MKD %s failed; [%s]\n", dir, cip->lastFTPCmdResultStr);
				result = kErrMKDFailed;
				cip->errNo = kErrMKDFailed;
				return (result);
			}
			/* Haven't chdir'ed, don't need to goto goback. */
			return (kNoErr);
		}

		for (;;) {
			cp = FUNC8(dir, '/');
			if (cp == NULL)
				cp = FUNC8(dir, '\\');
			if (cp == NULL) {
				cp = dir + FUNC7(dir) - 1;
				if (dir[0] == '\0') {
					result = kErrMKDFailed;
					cip->errNo = kErrMKDFailed;
					return (result);
				}
				/* Note: below we will refer to cp + 1
				 * which is why we set cp to point to
				 * the byte before the array begins!
				 */
				cp = dir - 1;
				break;
			}
			if (cp == dir) {
				result = kErrMKDFailed;
				cip->errNo = kErrMKDFailed;
				return (result);
			}
			*cp = '\0';
			result = FUNC1(cip, dir);
			if (result == 0) {
				break;	/* Found a valid parent dir. */
				/* from this point, we need to preserve old dir. */
			}
		}

		newTreeStart = dir2 + ((cp + 1) - dir);
		for (cp = newTreeStart; ; ) {
			cp2 = cp;
			cp = FUNC5(cp2, '/');
			c = '/';
			if (cp == NULL)
				cp = FUNC5(cp2, '\\');
			if (cp != NULL) {
				c = *cp;
				*cp = '\0';
				if (cp[1] == '\0') {
					/* Done, if they did "mkdir /tmp/dir/" */
					break;
				}
			}
			result = FUNC2(cip, "MKD %s", newTreeStart);
			if (result < 0) {
				return (result);
			}
			if (result != 2) {
				FUNC0(cip, kDontPerror, "Cwd=%s; MKD %s failed; [%s]\n", cip->buf, newTreeStart, cip->lastFTPCmdResultStr);
				result = kErrMKDFailed;
				cip->errNo = kErrMKDFailed;
				goto goback;
			}
			if (cp == NULL)
				break;	/* No more to make, done. */
			*cp++ = c;
		}
		result = kNoErr;

goback:
		result2 = FUNC1(cip, ((curDir == NULL) || (curDir[0] == '\0')) ? cip->buf : curDir);
		if ((result == 0) && (result2 < 0)) {
			result = kErrCannotGoToPrevDir;
			cip->errNo = kErrCannotGoToPrevDir;
		}
	}
	return (result);
}