#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pathName ;
typedef  int /*<<< orphan*/  path2 ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Bookmark ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FOPEN_READ_TEXT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 char* gOurDirectoryPath ; 
 int /*<<< orphan*/  kBookmarkFileName ; 
 int kBookmarkMinVersion ; 
 int /*<<< orphan*/  kOldBookmarkFileName ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 

FILE *
FUNC13(int *numBookmarks0)
{
	char pathName[256], path2[256];
	char line[256];
	FILE *fp;
	int version;
	int numBookmarks;
	Bookmark junkbm;

	if (gOurDirectoryPath[0] == '\0')
		return NULL;		/* Don't create in root directory. */
	(void) FUNC3(pathName, sizeof(pathName), kBookmarkFileName);
	fp = FUNC8(pathName, FOPEN_READ_TEXT);
	if (fp == NULL) {
		/* See if it exists under the old name. */
		(void) FUNC3(path2, sizeof(path2), kOldBookmarkFileName);
		if (FUNC10(path2, pathName) == 0) {
			/* Rename succeeded, now open it. */
			fp = FUNC8(pathName, FOPEN_READ_TEXT);
			if (fp == NULL)
				return NULL;
		}
		return NULL;		/* Okay to not have one yet. */
	}

	(void) FUNC6(pathName, 00600);
	if (FUNC1(line, sizeof(line), fp) == NULL) {
		(void) FUNC9(stderr, "%s: invalid format.\n", pathName);
		(void) FUNC7(fp);
		return NULL;
	}

	/* Sample line we're looking for:
	 * "NcFTP bookmark-file version: 8"
	 */
	version = -1;
	(void) FUNC12(line, "%*s %*s %*s %d", &version);
	if (version < kBookmarkMinVersion) {
		if (version < 0) {
			(void) FUNC9(stderr, "%s: invalid format, or bad version.\n", pathName);
			(void) FUNC7(fp);
			return NULL;
		}
		(void) FUNC5(path2, pathName);
		(void) FUNC11(line, ".v%d", version);
		(void) FUNC4(path2, line);
		(void) FUNC10(pathName, path2);
		(void) FUNC9(stderr, "%s: old version.\n", pathName);
		(void) FUNC7(fp);
		return NULL;
	}

	/* Sample line we're looking for:
	 * "Number of entries: 28" or "# # # 1"
	 */
	numBookmarks = -1;

	/* At the moment, we can't trust the number stored in the
	 * file.  It's there for future use.
	 */
	if (FUNC1(line, sizeof(line), fp) == NULL) {
		(void) FUNC9(stderr, "%s: invalid format.\n", pathName);
		(void) FUNC7(fp);
		return NULL;
	}

	if (numBookmarks0 == (int *) 0) {
		/* If the caller doesn't care how many bookmarks are *really*
		 * in the file, then we can return now.
		 */
		return(fp);
	}

	/* Otherwise, we have to read through the whole file because
	 * unfortunately the header line can't be trusted.
	 */
	for (numBookmarks = 0; ; numBookmarks++) {
		if (FUNC2(fp, &junkbm) < 0)
			break;
	}

	/* Now we have to re-open and re-position the file.
	 * We don't use rewind() because it doesn't always work.
	 * This introduces a race condition, but the bookmark
	 * functionality wasn't designed to be air-tight.
	 */
	FUNC0(fp);
	fp = FUNC8(pathName, FOPEN_READ_TEXT);
	if (fp == NULL)
		return (NULL);
	if (FUNC1(line, sizeof(line), fp) == NULL) {
		(void) FUNC9(stderr, "%s: invalid format.\n", pathName);
		(void) FUNC7(fp);
		return NULL;
	}

	if (FUNC1(line, sizeof(line), fp) == NULL) {
		(void) FUNC9(stderr, "%s: invalid format.\n", pathName);
		(void) FUNC7(fp);
		return NULL;
	}

	/* NOW we're done. */
	*numBookmarks0 = numBookmarks;
	return (fp);
}