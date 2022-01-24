#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  string ;
typedef  int /*<<< orphan*/  pattern2 ;
struct TYPE_5__ {int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/ * LineListPtr ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int kErrBadMagic ; 
 int kErrBadParameter ; 
 int /*<<< orphan*/  kLibraryMagic ; 
 int kNoErr ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(FTPCIPtr cip, LineListPtr fileList, const char *pattern, int doGlob)
{
	string pattern2;
	int result;

	if (cip == NULL)
		return (kErrBadParameter);
	if (FUNC7(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	if (fileList == NULL)
		return (kErrBadParameter);
	FUNC3(fileList);

	if ((pattern == NULL) || (pattern[0] == '\0'))
		return (kErrBadParameter);

	(void) FUNC5(pattern2, pattern);	/* Don't nuke the original. */

	/* Pre-process for ~'s. */
	FUNC1(pattern2, sizeof(pattern2));
	FUNC3(fileList);
	result = kNoErr;

	if ((doGlob == 1) && (FUNC2(pattern2))) {
#if defined(WIN32) || defined(_WINDOWS)
		result = WinLocalGlob(cip, fileList, pattern2);
#else
		result = FUNC4(cip, fileList, pattern2);
#endif
	} else {
		/* Or, if there were no globbing characters in 'pattern', then
		 * the pattern is really just a single pathname.
		 */
		(void) FUNC0(fileList, pattern2);
	}

	return (result);
}