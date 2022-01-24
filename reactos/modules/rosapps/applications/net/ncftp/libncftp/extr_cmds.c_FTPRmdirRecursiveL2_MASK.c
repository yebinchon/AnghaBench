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
struct TYPE_13__ {void* errNo; } ;
struct TYPE_12__ {TYPE_1__* first; } ;
struct TYPE_11__ {char* line; struct TYPE_11__* next; } ;
typedef  TYPE_1__* LinePtr ;
typedef  TYPE_2__ LineList ;
typedef  TYPE_3__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_3__* const,char*) ; 
 int FUNC2 (TYPE_3__* const,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__* const,TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__* const,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* kErrBadLineList ; 
 void* kErrCannotGoToPrevDir ; 
 int kErrGlobNoMatch ; 
 int /*<<< orphan*/  kGlobNo ; 
 int /*<<< orphan*/  kGlobYes ; 
 int kNoErr ; 
 int /*<<< orphan*/  kRecursiveNo ; 

__attribute__((used)) static int
FUNC5(const FTPCIPtr cip)
{
	LineList fileList;
	LinePtr filePtr;
	char *file;
	int result;

	result = FUNC3(cip, &fileList, "**", kGlobYes);
	if (result != kNoErr) {
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

		if (FUNC1(cip, file) == kNoErr) {
			/* It was a directory.
			 * Go in and wax it.
			 */
			result = FUNC5(cip);

			if (FUNC1(cip, "..") != kNoErr) {
				/* Panic -- we can no longer
				 * cd back to the directory
				 * we were in before.
				 */
				result = kErrCannotGoToPrevDir;
				cip->errNo = kErrCannotGoToPrevDir;
				return (result);
			}

			if ((result < 0) && (result != kErrGlobNoMatch))
				return (result);

			result = FUNC4(cip, file, kRecursiveNo, kGlobNo);
			if (result != kNoErr) {
				/* Well, we couldn't remove the empty
				 * directory.  Perhaps we screwed up
				 * and the directory wasn't empty.
				 */
				return (result);
			}
		} else {
			/* Assume it was a file -- remove it. */
			result = FUNC2(cip, file, kRecursiveNo, kGlobNo);
			/* Try continuing to remove the rest,
			 * even if this failed.
			 */
		}
	}
	FUNC0(&fileList);

	return (result);
}