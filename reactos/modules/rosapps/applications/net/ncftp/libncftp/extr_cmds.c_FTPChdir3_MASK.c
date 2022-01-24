#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* magic; int errNo; char* buf; int bufSize; } ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char const* const) ; 
 int FUNC1 (TYPE_1__*,char const* const,char* const,size_t const) ; 
 int FUNC2 (TYPE_1__*,char*,char*) ; 
 int FUNC3 (TYPE_1__*,char* const,size_t const) ; 
 int FUNC4 (TYPE_1__*,char const* const,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const* const,int) ; 
 int kChdirAndGetCWD ; 
 int kChdirAndMkdir ; 
 int kChdirOnly ; 
 int kErrBadMagic ; 
 int kErrBadParameter ; 
 void* kErrInvalidDirParam ; 
 char* kLibraryMagic ; 
 int kNoErr ; 
 int /*<<< orphan*/  kRecursiveYes ; 
 scalar_t__ FUNC7 (char const* const,char*) ; 

int
FUNC8(FTPCIPtr cip, const char *const cdCwd, char *const newCwd, const size_t newCwdSize, int flags)
{
	char *cp, *startcp;
	int result;
	int lastSubDir;
	int mkd, pwd;

	if (cip == NULL)
		return (kErrBadParameter);
	if (FUNC7(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	if (cdCwd == NULL) {
		result = kErrInvalidDirParam;
		cip->errNo = kErrInvalidDirParam;
		return result;
	}

	if (flags == kChdirOnly)
		return (FUNC0(cip, cdCwd));
	if (flags == kChdirAndGetCWD) {
		return (FUNC1(cip, cdCwd, newCwd, newCwdSize));
	} else if (flags == kChdirAndMkdir) {
		result = FUNC4(cip, cdCwd, kRecursiveYes);
		if (result == kNoErr)
			result = FUNC0(cip, cdCwd);
		return result;
	} else if (flags == (kChdirAndMkdir|kChdirAndGetCWD)) {
		result = FUNC4(cip, cdCwd, kRecursiveYes);
		if (result == kNoErr)
			result = FUNC1(cip, cdCwd, newCwd, newCwdSize);
		return result;
	}

	/* else: (flags | kChdirOneSubdirAtATime) == true */

	cp = cip->buf;
	cp[cip->bufSize - 1] = '\0';
	(void) FUNC6(cip->buf, cdCwd, cip->bufSize);
	if (cp[cip->bufSize - 1] != '\0')
		return (kErrBadParameter);

	mkd = (flags & kChdirAndMkdir);
	pwd = (flags & kChdirAndGetCWD);

	if ((cdCwd[0] == '\0') || (FUNC7(cdCwd, ".") == 0)) {
		result = 0;
		if (flags == kChdirAndGetCWD)
			result = FUNC3(cip, newCwd, newCwdSize);
		return (result);
	}

	lastSubDir = 0;
	do {
		startcp = cp;
		cp = FUNC5(cp);
		if (cp != NULL) {
			/* If this is the first slash in an absolute
			 * path, then startcp will be empty.  We will
			 * use this below to treat this as the root
			 * directory.
			 */
			*cp++ = '\0';
		} else {
			lastSubDir = 1;
		}
		if (FUNC7(startcp, ".") == 0) {
			result = 0;
			if ((lastSubDir != 0) && (pwd != 0))
				result = FUNC3(cip, newCwd, newCwdSize);
		} else if ((lastSubDir != 0) && (pwd != 0)) {
			result = FUNC1(cip, (*startcp != '\0') ? startcp : "/", newCwd, newCwdSize);
		} else {
			result = FUNC0(cip, (*startcp != '\0') ? startcp : "/");
		}
		if (result < 0) {
			if ((mkd != 0) && (*startcp != '\0')) {
				if (FUNC2(cip, "MKD %s", startcp) == 2) {
					result = FUNC0(cip, startcp);
				} else {
					/* couldn't change nor create */
					cip->errNo = result;
				}
			} else {
				cip->errNo = result;
			}
		}
	} while ((!lastSubDir) && (result == 0));

	return (result);
}