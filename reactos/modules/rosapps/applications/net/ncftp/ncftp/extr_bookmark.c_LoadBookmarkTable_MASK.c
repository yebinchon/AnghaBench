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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Bookmark ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/ * gBookmarkTable ; 
 int gNumBookmarks ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,size_t) ; 

int
FUNC7(void)
{
	int i, nb;
	FILE *infp;

	infp = FUNC2(&nb);
	if (infp == NULL) {
		nb = 0;
	}
	if ((nb != gNumBookmarks) && (gBookmarkTable != NULL)) {
		/* Re-loading the table from disk. */
		gBookmarkTable = (Bookmark *) FUNC6(gBookmarkTable, (size_t) (nb + 1) * sizeof(Bookmark));
		FUNC5(gBookmarkTable, 0, (nb + 1) * sizeof(Bookmark));
	} else {
		gBookmarkTable = FUNC4((size_t) (nb + 1), (size_t) sizeof(Bookmark));
	}

	if (gBookmarkTable == NULL) {
		FUNC0(infp);
		return (-1);
	}

	for (i=0; i<nb; i++) {
		if (FUNC1(infp, gBookmarkTable + i) < 0) {
			break;
		}
	}
	gNumBookmarks = i;

	FUNC0(infp);
	FUNC3();
	return (0);
}