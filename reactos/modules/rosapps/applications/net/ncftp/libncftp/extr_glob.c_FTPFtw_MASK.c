#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  savedcwd ;
typedef  int /*<<< orphan*/  curcwd ;
struct TYPE_11__ {int errNo; } ;
typedef  int (* FTPFtwProc ) (TYPE_1__* const,char*,int /*<<< orphan*/ ) ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 int FUNC0 (TYPE_1__* const,char const* const) ; 
 int FUNC1 (TYPE_1__* const,char*,char*,int,int (*) (TYPE_1__* const,char*,int /*<<< orphan*/ ),int) ; 
 int FUNC2 (TYPE_1__* const,char*,int) ; 
 int FUNC3 (TYPE_1__* const,char const* const) ; 
 void* kErrCannotGoToPrevDir ; 
 int kErrNotADirectory ; 
 int /*<<< orphan*/  kFtwDir ; 
 int kNoErr ; 
 int /*<<< orphan*/ * FUNC4 (char*,char) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 int FUNC7 (TYPE_1__* const,char*,int /*<<< orphan*/ ) ; 

int
FUNC8(const FTPCIPtr cip, const char *const dir, FTPFtwProc proc, int maxdepth)
{
	int result, result2;
	char *cp;
	char savedcwd[1024];
	char curcwd[2048];

	result = FUNC3(cip, dir);
	if (result < 0) {
		/* error */
		return result;
	} else if (result == 0) {
		result = cip->errNo = kErrNotADirectory;
		return (result);
	}

	/* Preserve old working directory. */
	(void) FUNC2(cip, savedcwd, sizeof(savedcwd));

	result = FUNC0(cip, dir);
	if (result != kNoErr) {
		return (result);
	}

	/* Get full working directory we just changed to. */
	result = FUNC2(cip, curcwd, sizeof(curcwd) - 3);
	if (result != kNoErr) {
		if (FUNC0(cip, savedcwd) != kNoErr) {
			result = kErrCannotGoToPrevDir;
			cip->errNo = kErrCannotGoToPrevDir;
		}
		return (result);
	}

	result2 = (*proc)(cip, curcwd, kFtwDir);
	if (result2 == kNoErr) {
		cp = curcwd + FUNC5(curcwd);

		if ((FUNC4(curcwd, '/') == NULL) && (FUNC6(curcwd, '\\') != NULL))
			*cp++ = '\\';
		else
			*cp++ = '/';
		*cp = '\0';
		result = FUNC1(cip, curcwd, cp, sizeof(curcwd), proc, maxdepth - 1);
	}


	if (FUNC0(cip, savedcwd) != kNoErr) {
		/* Could not cd back to the original user directory -- bad. */
		result = kErrCannotGoToPrevDir;
		cip->errNo = kErrCannotGoToPrevDir;
		return (result);
	}

	if ((result2 != kNoErr) && (result == kNoErr))
		result = result2;

	return (result);
}