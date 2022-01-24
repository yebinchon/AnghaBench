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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_READ_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* gOurDirectoryPath ; 
 int /*<<< orphan*/  gPrefsDirty ; 
 char* kGlobalFixedPrefFileName ; 
 char* kGlobalPrefFileName ; 
 int /*<<< orphan*/  kPrefFileName ; 
 int /*<<< orphan*/  kPrefFileNameV2 ; 

void
FUNC4(void)
{
	FILE *fp;
	char pathName[256];

	/* As with the firewall preference file, there can be
	 * site-wide preferences and user-specific preferences.
	 * The user pref file is of course kept in the user's
	 * NcFTP home directory.
	 *
	 * The way we do this is we first look for a global
	 * preferences file.  We then process the user's pref
	 * file, which could override the global prefs.  Finally,
	 * we open a "global fixed" prefs file which then
	 * overrides anything the user may have done.
	 */

	fp = FUNC3(kGlobalPrefFileName, FOPEN_READ_TEXT);
	if (fp != NULL) {
		/* Opened the global (but user-overridable) prefs file. */
		FUNC1(fp);
		(void) FUNC2(fp);
	}

	if (gOurDirectoryPath[0] != '\0') {
		(void) FUNC0(pathName, sizeof(pathName), kPrefFileName);

		fp = FUNC3(pathName, FOPEN_READ_TEXT);
		if (fp == NULL) {
			/* Try loading the version 2 prefs.
			 * There will be options we no longer recognize, but
			 * we'd like to import the prefs when possible.
			 */
			gPrefsDirty++;
			(void) FUNC0(pathName, sizeof(pathName), kPrefFileNameV2);
			fp = FUNC3(pathName, FOPEN_READ_TEXT);
		}

		if (fp == NULL) {
			/* Write a new one when we're done. */
			gPrefsDirty++;
		} else {
			/* Opened the preferences file. */
			FUNC1(fp);
			(void) FUNC2(fp);
		}
	}

	fp = FUNC3(kGlobalFixedPrefFileName, FOPEN_READ_TEXT);
	if (fp != NULL) {
		/* Opened the global (and not overridable) prefs file. */
		FUNC1(fp);
		(void) FUNC2(fp);
	}
}