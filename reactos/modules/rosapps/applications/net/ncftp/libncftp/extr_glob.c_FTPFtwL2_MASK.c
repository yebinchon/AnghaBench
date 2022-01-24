#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int errNo; } ;
struct TYPE_15__ {TYPE_1__* first; } ;
struct TYPE_14__ {char* line; struct TYPE_14__* next; } ;
typedef  TYPE_1__* LinePtr ;
typedef  TYPE_2__ LineList ;
typedef  int (* FTPFtwProc ) (TYPE_3__* const,char*,int /*<<< orphan*/ ) ;
typedef  TYPE_3__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_3__* const,char*) ; 
 int FUNC2 (TYPE_3__* const,char*) ; 
 int FUNC3 (TYPE_3__* const,TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char*,size_t) ; 
 int kErrBadLineList ; 
 void* kErrCannotGoToPrevDir ; 
 int kErrGlobNoMatch ; 
 int kErrRecursionLimitReached ; 
 int /*<<< orphan*/  kFtwDir ; 
 int /*<<< orphan*/  kFtwFile ; 
 int /*<<< orphan*/  kGlobYes ; 
 int kNoErr ; 
 int /*<<< orphan*/ * FUNC5 (char*,char) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 int FUNC7 (TYPE_3__* const,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__* const,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(const FTPCIPtr cip, char *dir, char *end, size_t dirsize, FTPFtwProc proc, int maxdepth)
{
	LineList fileList;
	LinePtr filePtr;
	char *file, *cp;
	int result;

	if (maxdepth <= 0) {
		result = cip->errNo = kErrRecursionLimitReached;
		return (result);
	}

	result = FUNC3(cip, &fileList, "**", kGlobYes);
	if (result != kNoErr) {
		if (result == kErrGlobNoMatch)
			result = kNoErr;	/* empty directory is okay. */
		return (result);
	}

	for (filePtr = fileList.first;
		filePtr != NULL;
		filePtr = filePtr->next)
	{
		file = filePtr->line;
		if (file == NULL) {
			cip->errNo = kErrBadLineList;
			break;
		}

		if ((file[0] == '.') && ((file[1] == '\0') || ((file[1] == '.') && (file[2] == '\0'))))
			continue;	/* Skip . and .. */

		result = FUNC2(cip, file);
		if (result < 0) {
			/* error */
			/* could be just a stat error, so continue */
			continue;
		} else if (result == 1) {
			/* directory */
			cp = FUNC4(dir, file, dirsize);
			result = (*proc)(cip, dir, kFtwDir);
			if (result != kNoErr)
				break;

			if ((FUNC5(dir, '/') == NULL) && (FUNC6(dir, '\\') != NULL))
				*cp++ = '\\';
			else
				*cp++ = '/';
			*cp = '\0';

			result = FUNC1(cip, file);
			if (result == kNoErr) {
				result = FUNC9(cip, dir, cp, dirsize, proc, maxdepth - 1);
				if (result != kNoErr)
					break;
				if (FUNC1(cip, "..") < 0) {
					result = kErrCannotGoToPrevDir;
					cip->errNo = kErrCannotGoToPrevDir;
					break;
				}
			}

			*end = '\0';
			if (result != 0)
				break;
		} else {
			/* file */
			cp = FUNC4(dir, file, dirsize);
			result = (*proc)(cip, dir, kFtwFile);
			*end = '\0';
			if (result != 0)
				break;
		}
	}
	FUNC0(&fileList);

	return (result);
}