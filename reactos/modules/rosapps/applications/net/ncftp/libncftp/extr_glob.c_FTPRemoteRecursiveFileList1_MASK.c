#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cwd ;
struct TYPE_6__ {int /*<<< orphan*/  serverType; } ;
typedef  int /*<<< orphan*/  LineList ;
typedef  int /*<<< orphan*/  FileInfoListPtr ;
typedef  int /*<<< orphan*/  FileInfoList ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char* const,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char* const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,char* const) ; 
 int FUNC6 (TYPE_1__*,char*,int) ; 
 int FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ *,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int kNoErr ; 

int
FUNC10(FTPCIPtr cip, char *const rdir, FileInfoListPtr files)
{
	LineList dirContents;
	FileInfoList fil;
	char cwd[512];
	int result;

	if ((result = FUNC6(cip, cwd, sizeof(cwd))) < 0)
		return (result);

	FUNC8(files);

	if (rdir == NULL)
		return (-1);

	if (FUNC5(cip, rdir) < 0) {
		/* Probably not a directory.
		 * Just add it as a plain file
		 * to the list.
		 */
		(void) FUNC2(files, rdir);
		return (kNoErr);
	}

	/* Paths collected must be relative. */
	if ((result = FUNC7(cip, "", &dirContents, "-lRa", 1, (int *) 0)) < 0) {
		if ((result = FUNC5(cip, cwd)) < 0) {
			return (result);
		}
	}

	(void) FUNC9(&fil, &dirContents, cip->serverType);
	FUNC4(&dirContents);
	/* Could sort it to breadth-first here. */
	/* (void) SortRecursiveFileList(&fil); */
	(void) FUNC0(&fil, rdir, 1, 1);
	(void) FUNC1(files, &fil);
	FUNC3(&fil);

	if ((result = FUNC5(cip, cwd)) < 0) {
		return (result);
	}
	return (kNoErr);
}