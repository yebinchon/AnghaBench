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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_WRITE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 char* gOurDirectoryPath ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  kBookmarkFileName ; 
 int kBookmarkVersion ; 
 int /*<<< orphan*/  kTmpBookmarkFileName ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 

FILE *
FUNC9(int nb)
{
	FILE *outfp;
	char pidStr[32];
	char pathName[256], path2[256];

	if (gOurDirectoryPath[0] == '\0')
		return (NULL);		/* Don't create in root directory. */

	(void) FUNC0(path2, sizeof(path2), kBookmarkFileName);
	(void) FUNC0(pathName, sizeof(pathName), kTmpBookmarkFileName);
	(void) FUNC8(pidStr, "-%u.txt", (unsigned int) FUNC6());
	(void) FUNC1(pathName, pidStr);

	outfp = FUNC4(pathName, FOPEN_WRITE_TEXT);
	if (outfp == NULL) {
		(void) FUNC5(stderr, "Could not save bookmark.\n");
		FUNC7(pathName);
		return (NULL);
	}
	(void) FUNC2(pathName, 00600);
	if (nb > 0) {
		if (FUNC5(*outfp, "NcFTP bookmark-file version: %d\nNumber of bookmarks: %d\n", kBookmarkVersion, nb) < 0) {
			(void) FUNC5(stderr, "Could not save bookmark.\n");
			FUNC7(pathName);
			(void) FUNC3(outfp);
			return (NULL);
		}
	} else {
		if (FUNC5(*outfp, "NcFTP bookmark-file version: %d\nNumber of bookmarks: ??\n", kBookmarkVersion) < 0) {
			(void) FUNC5(stderr, "Could not save bookmark.\n");
			FUNC7(pathName);
			(void) FUNC3(outfp);
			return (NULL);
		}
	}

	return (outfp);
}