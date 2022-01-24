#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pathName2 ;
typedef  int /*<<< orphan*/  pathName ;
struct TYPE_2__ {scalar_t__ visible; char* varname; int /*<<< orphan*/  (* proc ) (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_WRITE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int gNumPrefOpts ; 
 TYPE_1__* gPrefOpts ; 
 scalar_t__ gPrefsDirty ; 
 scalar_t__ FUNC4 () ; 
 char* kPrefFileName ; 
 scalar_t__ kPrefOptObselete ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void
FUNC10(void)
{
	char pathName[256];
	char pathName2[256];
	char tName[32];
	int t;
	FILE *fp;

	if (gPrefsDirty == 0)
		return;		/* Don't need to save -- no changes made. */

	(void) FUNC0(pathName, sizeof(pathName), kPrefFileName);

	(void) FUNC7(tName, "tpref%06u.txt", (unsigned int) FUNC4());
	(void) FUNC0(pathName2, sizeof(pathName2), tName);

	fp = FUNC2(pathName2, FOPEN_WRITE_TEXT);
	if (fp == NULL) {
		FUNC5("could not save preferences file");
	} else {
		(void) FUNC3(fp, "%s", "# NcFTP 3 preferences file\n# This file is loaded and overwritten each time NcFTP is run.\n#\n");
		for (t=0; t<gNumPrefOpts; t++) {
			if (gPrefOpts[t].visible != kPrefOptObselete) {
				(void) FUNC3(fp, "%s=", gPrefOpts[t].varname);
				(*gPrefOpts[t].proc)(t, NULL, fp);
				(void) FUNC3(fp, "\n");
			}
		}
		(void) FUNC1(fp);
		(void) FUNC9(pathName);
		if (FUNC6(pathName2, pathName) < 0) {
			FUNC5("could not finish saving preferences file");
			(void) FUNC9(pathName2);
		};
	}
}