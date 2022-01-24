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
struct TYPE_4__ {char const* const magic; int errNo; char* buf; int bufSize; } ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,char const* const) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const* const,int) ; 
 int /*<<< orphan*/  gRemoteCWD ; 
 int kErrBadMagic ; 
 int kErrBadParameter ; 
 void* kErrInvalidDirParam ; 
 char* kLibraryMagic ; 
 int FUNC5 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC6 (char const* const,char*) ; 

int
FUNC7(FTPCIPtr cip, const char *const cdCwd)
{
	char *cp, *startcp;
	int result;
	int lastSubDir;

	if (cip == NULL)
		return (kErrBadParameter);
	if (FUNC6(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	if (cdCwd == NULL) {
		result = kErrInvalidDirParam;
		cip->errNo = kErrInvalidDirParam;
		return result;
	}

	if ((cdCwd[0] == '\0') || (FUNC6(cdCwd, ".") == 0)) {
		result = 0;
		return (result);
	}

	cp = cip->buf;
	cp[cip->bufSize - 2] = '\0';
	if ((cdCwd[0] == '.') && (cdCwd[1] == '.') && ((cdCwd[2] == '\0') || FUNC0(cdCwd[2]))) {
		FUNC1(cip->buf, cip->bufSize, gRemoteCWD, cdCwd);
	} else {
		(void) FUNC4(cip->buf, cdCwd, cip->bufSize);
	}
	if (cp[cip->bufSize - 2] != '\0')
		return (kErrBadParameter);

	FUNC3(cp);
	do {
		startcp = cp;
		cp = FUNC2(cp + 0);
		if (cp != NULL) {
			*cp++ = '\0';
		}
		lastSubDir = (cp == NULL);
		result = FUNC5(cip, (*startcp != '\0') ? startcp : "/", lastSubDir ? 0 : 1);
		if (result < 0) {
			cip->errNo = result;
		}
	} while ((!lastSubDir) && (result == 0));

	return (result);
}