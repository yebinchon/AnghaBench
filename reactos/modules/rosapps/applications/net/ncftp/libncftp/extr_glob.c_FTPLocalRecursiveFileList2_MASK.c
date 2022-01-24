#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct Stat {scalar_t__ st_size; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ longest_int ;
struct TYPE_8__ {char type; int /*<<< orphan*/ * plug; int /*<<< orphan*/ * rlinkto; scalar_t__ size; int /*<<< orphan*/  mdtm; void* lname; int /*<<< orphan*/ * rname; void* relname; } ;
struct TYPE_7__ {TYPE_1__* first; } ;
struct TYPE_6__ {char* line; struct TYPE_6__* next; } ;
typedef  TYPE_1__* LinePtr ;
typedef  TYPE_2__* LineListPtr ;
typedef  int /*<<< orphan*/  FileInfoListPtr ;
typedef  TYPE_3__ FileInfo ;
typedef  int /*<<< orphan*/  FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,struct Stat*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct Stat*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _MAX_PATH ; 
 int /*<<< orphan*/  kDoPerror ; 
 int kNoErr ; 
 scalar_t__ FUNC9 (char*,char*) ; 

int
FUNC10(FTPCIPtr cip, LineListPtr fileList, FileInfoListPtr files, int erelative)
{
	LinePtr filePtr, nextFilePtr;
#if defined(WIN32) || defined(_WINDOWS)
	char fullpath[_MAX_PATH + 1];
	char relpath[_MAX_PATH + 1];
#else
	char fullpath[512];
	char relpath[512];
#endif
	struct Stat st;
	FileInfo fi;
	char *cp;

	FUNC2(files);

	for (filePtr = fileList->first;
		filePtr != NULL;
		filePtr = nextFilePtr)
	{
		nextFilePtr = filePtr->next;

		(void) FUNC4(fullpath, filePtr->line);	/* initialize fullpath */
		if ((erelative != 0) || (FUNC9(filePtr->line, ".") == 0) || (filePtr->line[0] == '\0'))
			(void) FUNC4(relpath, "");
		else if ((cp = FUNC7(filePtr->line)) == NULL)
			(void) FUNC4(relpath, filePtr->line);
		else
			(void) FUNC4(relpath, cp + 1);
		if (FUNC3(fullpath, &st) < 0) {
			FUNC1(cip, kDoPerror, "could not stat %s.\n", fullpath);
			continue;
		}

		if (FUNC5(st.st_mode) == 0) {
			fi.relname = FUNC6(relpath);
			fi.rname = NULL;
			fi.lname = FUNC6(fullpath);
			fi.mdtm = st.st_mtime;
			fi.size = (longest_int) st.st_size;
			fi.rlinkto = NULL;
			fi.plug = NULL;
			fi.type = '-';
			(void) FUNC0(files, &fi);
			continue;			/* wasn't a directory */
		}

		/* Paths collected must be relative. */
		FUNC8(cip, fullpath, &st, relpath, files);
	}
	return (kNoErr);
}