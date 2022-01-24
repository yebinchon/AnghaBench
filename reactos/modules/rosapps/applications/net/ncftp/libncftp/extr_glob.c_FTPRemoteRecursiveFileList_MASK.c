#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cwd ;
struct TYPE_11__ {int /*<<< orphan*/  serverType; } ;
struct TYPE_10__ {TYPE_1__* first; } ;
struct TYPE_9__ {char* line; struct TYPE_9__* next; } ;
typedef  TYPE_1__* LinePtr ;
typedef  TYPE_2__* LineListPtr ;
typedef  int /*<<< orphan*/  LineList ;
typedef  int /*<<< orphan*/  FileInfoListPtr ;
typedef  int /*<<< orphan*/  FileInfoList ;
typedef  TYPE_3__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*,char*) ; 
 int FUNC6 (TYPE_3__*,char*,int) ; 
 int FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ *,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int kNoErr ; 

int
FUNC10(FTPCIPtr cip, LineListPtr fileList, FileInfoListPtr files)
{
	LinePtr filePtr, nextFilePtr;
	LineList dirContents;
	FileInfoList fil;
	char cwd[512];
	int result;
	char *rdir;

	if ((result = FUNC6(cip, cwd, sizeof(cwd))) < 0)
		return (result);

	FUNC8(files);

	for (filePtr = fileList->first;
		filePtr != NULL;
		filePtr = nextFilePtr)
	{
		nextFilePtr = filePtr->next;

		rdir = filePtr->line;
		if (rdir == NULL)
			continue;

		if (FUNC5(cip, rdir) < 0) {
			/* Probably not a directory.
			 * Just add it as a plain file
			 * to the list.
			 */
			(void) FUNC2(files, rdir);
			continue;
		}

		/* Paths collected must be relative. */
		if ((result = FUNC7(cip, "", &dirContents, "-lRa", 1, (int *) 0)) < 0) {
			goto goback;
		}

		(void) FUNC9(&fil, &dirContents, cip->serverType);
		FUNC4(&dirContents);
		(void) FUNC0(&fil, rdir, 1, 1);
		(void) FUNC1(files, &fil);
		FUNC3(&fil);

goback:
		if ((result = FUNC5(cip, cwd)) < 0) {
			return (result);
		}
	}
	return (kNoErr);
}