#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  savedCwd ;
struct TYPE_13__ {scalar_t__ NLSTfileParamWorks; int errNo; char* startingWorkingDirectory; int /*<<< orphan*/  magic; } ;
struct TYPE_12__ {int nLines; TYPE_1__* last; } ;
struct TYPE_11__ {char const* line; } ;
typedef  TYPE_2__ LineList ;
typedef  TYPE_3__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_3__* const,char*) ; 
 int FUNC2 (TYPE_3__* const,char*,int) ; 
 int FUNC3 (TYPE_3__* const,char const* const,TYPE_2__*,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ kCommandAvailabilityUnknown ; 
 scalar_t__ kCommandAvailable ; 
 scalar_t__ kCommandNotAvailable ; 
 int kErrBadMagic ; 
 int kErrBadParameter ; 
 void* kErrNLSTFailed ; 
 int kErrNLSTwithFileNotAvailable ; 
 int /*<<< orphan*/  kLibraryMagic ; 
 int kNoErr ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 

int
FUNC7(const FTPCIPtr cip, const char *const file)
{
	int result;
	LineList fileList, rootFileList;
	char savedCwd[512];

	if (cip == NULL)
		return (kErrBadParameter);
	if (FUNC5(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	if (file == NULL)
		return (kErrBadParameter);

	if (cip->NLSTfileParamWorks == kCommandNotAvailable) {
		cip->errNo = result = kErrNLSTwithFileNotAvailable;
		return (result);
	}

	if (cip->NLSTfileParamWorks == kCommandAvailabilityUnknown) {
		/* First, make sure that when we NLST a pathname
		 * that does not exist, that we get an error back.
		 *
		 * We also assume that a valid NLST response has
		 * at least 3 lines of response text, typically
		 * a "start" line, intermediate data, and then
		 * a trailing line.
		 *
		 * We also can see a one-line case.
		 */
		if (
			((FUNC3(cip, "NoSuchFile", &fileList, "", 0, (int *) 0)) == kNoErr) &&
			(fileList.nLines >= 1) &&
			(FUNC6(fileList.last->line, "o such file") == NULL) &&
			(FUNC6(fileList.last->line, "ot found") == NULL) &&
			(FUNC6(fileList.last->line, "o Such File") == NULL) &&
			(FUNC6(fileList.last->line, "ot Found") == NULL)

		) {
			cip->NLSTfileParamWorks = kCommandNotAvailable;
			cip->errNo = result = kErrNLSTwithFileNotAvailable;
			FUNC0(&fileList);
			return (result);
		}
		FUNC0(&fileList);

		/* We can't assume that we can simply say NLST rootdir/firstfile,
		 * since the remote host may not be using / as a directory
		 * delimiter.  So we have to change to the root directory
		 * and then do the NLST on that file.
		 */
		if (
			(FUNC2(cip, savedCwd, sizeof(savedCwd)) != kNoErr) ||
			(FUNC1(cip, cip->startingWorkingDirectory) != kNoErr)
		) {
			return (cip->errNo);
		}

		/* OK, we get an error when we list
		 * a non-existant file, but now we need to
		 * see if we get a positive reply when
		 * we stat a file that does exist.
		 *
		 * To do this, we list the root directory,
		 * which we assume has one or more items.
		 * If it doesn't, the user can't do anything
		 * anyway.  Then we do the first item
		 * we found to see if NLST says it exists.
		 */
		if (
			((result = FUNC3(cip, "", &rootFileList, "", 0, (int *) 0)) < 0) ||
			(rootFileList.last == NULL) ||
			(rootFileList.last->line == NULL)
		) {
			/* Hmmm... well, in any case we can't use NLST. */
			cip->NLSTfileParamWorks = kCommandNotAvailable;
			cip->errNo = result = kErrNLSTwithFileNotAvailable;
			FUNC0(&rootFileList);
			(void) FUNC1(cip, savedCwd);
			return (result);
		}

		if (
			((FUNC3(cip, rootFileList.last->line, &fileList, "", 0, (int *) 0)) == kNoErr) &&
			(fileList.nLines >= 1) &&
			(FUNC6(fileList.last->line, "o such file") == NULL) &&
			(FUNC6(fileList.last->line, "ot found") == NULL) &&
			(FUNC6(fileList.last->line, "o Such File") == NULL) &&
			(FUNC6(fileList.last->line, "ot Found") == NULL)

		) {
			/* Good.  We listed the item. */
			FUNC0(&fileList);
			FUNC0(&rootFileList);
			cip->NLSTfileParamWorks = kCommandAvailable;

			/* Don't forget to change back to the original directory. */
			(void) FUNC1(cip, savedCwd);
		} else {
			cip->NLSTfileParamWorks = kCommandNotAvailable;
			cip->errNo = result = kErrNLSTwithFileNotAvailable;
			FUNC0(&fileList);
			FUNC0(&rootFileList);
			(void) FUNC1(cip, savedCwd);
			return (result);
		}
	}

	/* Check the requested item. */
	FUNC4(&fileList);
	if (
		((FUNC3(cip, file, &fileList, "", 0, (int *) 0)) == kNoErr) &&
		(fileList.nLines >= 1) &&
		(FUNC6(fileList.last->line, "o such file") == NULL) &&
		(FUNC6(fileList.last->line, "ot found") == NULL) &&
		(FUNC6(fileList.last->line, "o Such File") == NULL) &&
		(FUNC6(fileList.last->line, "ot Found") == NULL)

	) {
		/* The item existed. */
		result = kNoErr;
	} else {
		cip->errNo = kErrNLSTFailed;
		result = kErrNLSTFailed;
	}

	FUNC0(&fileList);
	return (result);
}