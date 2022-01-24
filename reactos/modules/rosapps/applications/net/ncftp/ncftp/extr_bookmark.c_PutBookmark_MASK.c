#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  line ;
struct TYPE_4__ {int /*<<< orphan*/  bookmarkName; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ Bookmark ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*,size_t) ; 

int
FUNC13(Bookmark *bmp, int savePassword)
{
	FILE *infp, *outfp;
	char line[256];
	char bmAbbr[64];
	int replaced = 0;
	size_t len;

	outfp = FUNC3(0);
	if (outfp == NULL)
		return (-1);

	(void) FUNC5(bmAbbr, bmp->bookmarkName);
	(void) FUNC4(bmAbbr, ",");
	len = FUNC11(bmAbbr);

	/* This may fail the first time we ever save a bookmark. */
	infp = FUNC2(NULL);
	if (infp != NULL) {
		while (FUNC1(line, sizeof(line), infp) != NULL) {
			if (FUNC12(line, bmAbbr, len) == 0) {
				/* Replace previous entry. */
				if (FUNC7(bmp, outfp, savePassword) < 0) {
					(void) FUNC9(stderr, "Could not save bookmark.\n");
					FUNC10("reason");
					(void) FUNC8(outfp);
				}
				replaced = 1;
			} else {
				if (FUNC9(*outfp, "%s\n", line) < 0) {
					(void) FUNC9(stderr, "Could not save bookmark.\n");
					FUNC10("reason");
					(void) FUNC8(outfp);
					return (-1);
				}
			}
		}
		FUNC0(infp);
	}

	if (replaced == 0) {
		/* Add it as a new bookmark. */
		if (FUNC7(bmp, outfp, savePassword) < 0) {
			(void) FUNC9(stderr, "Could not save bookmark.\n");
			FUNC10("reason");
			(void) FUNC8(outfp);
			return (-1);
		}
	}

	if (FUNC8(outfp) < 0) {
		(void) FUNC9(stderr, "Could not save bookmark.\n");
		FUNC10("reason");
		return (-1);
	}

	if (FUNC6() < 0) {
		(void) FUNC9(stderr, "Could not rename bookmark file.\n");
		FUNC10("reason");
		return (-1);
	}
	return (0);
}