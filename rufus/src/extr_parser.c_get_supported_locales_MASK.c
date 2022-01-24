#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_6__ {int command; char const** txt; int unum_size; int* unum; void** num; int /*<<< orphan*/  list; int /*<<< orphan*/  ctrl_id; } ;
typedef  TYPE_1__ loc_cmd ;
typedef  int /*<<< orphan*/  line ;
typedef  void* int32_t ;
struct TYPE_7__ {char const c; int /*<<< orphan*/  flag; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int BOOL ;

/* Variables and functions */
 size_t FUNC0 (TYPE_4__*) ; 
 int FALSE ; 
#define  LC_ATTRIBUTES 130 
#define  LC_LOCALE 129 
#define  LC_VERSION 128 
 int /*<<< orphan*/  LOC_NEEDS_UPDATE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_4__* attr_parse ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (char,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int loc_line_nr ; 
 int /*<<< orphan*/  locale_list ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const,...) ; 
 int /*<<< orphan*/ * FUNC14 (char const*) ; 
 int /*<<< orphan*/  space ; 
 size_t FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

BOOL FUNC17(const char* filename)
{
	FILE* fd = NULL;
	BOOL r = FALSE;
	char line[1024];
	size_t i, j, k;
	loc_cmd *lcmd = NULL, *last_lcmd = NULL;
	long end_of_block;
	int version_line_nr = 0;
	uint32_t loc_base_major = -1, loc_base_minor = -1;

	fd = FUNC14(filename);
	if (fd == NULL)
		goto out;

	// Check that the file doesn't contain a BOM and was saved in DOS mode
	i = FUNC3(line, 1, sizeof(line), fd);
	if (i < sizeof(line)) {
		FUNC16("Invalid loc file: the file is too small!");
		goto out;
	}
	if (((uint8_t)line[0]) > 0x80) {
		FUNC16("Invalid loc file: the file should not have a BOM (Byte Order Mark)");
		goto out;
	}
	for (i=0; i<sizeof(line)-1; i++)
		if ((((uint8_t)line[i]) == 0x0D) && (((uint8_t)line[i+1]) == 0x0A)) break;
	if (i >= sizeof(line)-1) {
		FUNC16("Invalid loc file: the file MUST be saved in DOS mode (CR/LF)");
		goto out;
	}
	FUNC6(fd, 0, SEEK_SET);

	loc_line_nr = 0;
	line[0] = 0;
	FUNC5();
	do {
		// adjust the last block
		end_of_block = FUNC7(fd);
		if (FUNC2(line, sizeof(line), fd) == NULL)
			break;
		loc_line_nr++;
		// Skip leading spaces
		i = FUNC15(line, space);
		if ((line[i] != 'l') && (line[i] != 'v') && (line[i] != 'a'))
			continue;
		// line[i] is not NUL so i+1 is safe to access
		lcmd = FUNC8(line[i], &line[i+1]);
		if ((lcmd == NULL) || ((lcmd->command != LC_LOCALE) && (lcmd->command != LC_VERSION) && (lcmd->command != LC_ATTRIBUTES))) {
			FUNC4(lcmd);
			continue;
		}
		switch (lcmd->command) {
		case LC_LOCALE:
			// we use num[0] and num[1] as block delimiter index for this locale in the file
			if (last_lcmd != NULL) {
				if (version_line_nr == 0) {
					FUNC16("localization: no compatible version was found - this locale will be ignored\n");
					FUNC10(&last_lcmd->list);
					FUNC4(last_lcmd);
				} else {
					last_lcmd->num[1] = (int32_t)end_of_block;
				}
			}
			lcmd->num[0] = (int32_t)FUNC7(fd);
			// Add our locale command to the locale list
			FUNC9(&lcmd->list, &locale_list);
			FUNC16("localization: found locale '%s'\n", lcmd->txt[0]);
			last_lcmd = lcmd;
			version_line_nr = 0;
			break;
		case LC_ATTRIBUTES:
			if (last_lcmd == NULL) {
				FUNC12("[a]ttributes cannot precede [l]ocale");
			} else for(j=0; lcmd->txt[0][j] != 0; j++) {
				for (k=0; k<FUNC0(attr_parse); k++) {
					if (attr_parse[k].c == lcmd->txt[0][j]) {
						// Repurpose ctrl_id as an attributes mask
						last_lcmd->ctrl_id |= attr_parse[k].flag;
						break;
					}
				}
				if (k >= FUNC0(attr_parse))
					FUNC13("unknown attribute '%c' - ignored", lcmd->txt[0][j]);
			}
			FUNC4(lcmd);
			break;
		case LC_VERSION:
			if (version_line_nr != 0) {
				FUNC13("[v]ersion was already provided at line %d", version_line_nr);
			} else if (lcmd->unum_size != 2) {
				FUNC12("[v]ersion format is invalid");
			} else if (last_lcmd == NULL) {
				FUNC12("[v]ersion cannot precede [l]ocale");
			} else if (loc_base_major == -1) {
				// We use the first version from our loc file (usually en-US) as our base
				// as it should always be the most up to date.
				loc_base_major = lcmd->unum[0];
				loc_base_minor = lcmd->unum[1];
				version_line_nr = loc_line_nr;
			} else {
				if ((lcmd->unum[0] < loc_base_major) || ((lcmd->unum[0] == loc_base_major) && (lcmd->unum[1] < loc_base_minor))) {
					last_lcmd->ctrl_id |= LOC_NEEDS_UPDATE;
					FUNC13("the version of this translation is older than the base one and may result in some messages not being properly translated.\n"
						"If you are the translator, please update your translation with the changes that intervened between v%d.%d and v%d.%d.\n"
						"See https://github.com/pbatard/rufus/blob/master/res/loc/ChangeLog.txt",
						lcmd->unum[0], lcmd->unum[1], loc_base_major, loc_base_minor);
				}
				version_line_nr = loc_line_nr;
			}
			FUNC4(lcmd);
			break;
		}
	} while (1);
	if (last_lcmd != NULL) {
		if (version_line_nr == 0) {
			FUNC16("localization: no compatible version was found - this locale will be ignored\n");
			FUNC10(&last_lcmd->list);
			FUNC4(last_lcmd);
		} else {
			last_lcmd->num[1] = (int32_t)FUNC7(fd);
		}
	}
	r = !FUNC11(&locale_list);
	if (r == FALSE)
		FUNC16("localization: '%s' contains no valid locale sections\n", filename);

out:
	if (fd != NULL)
		FUNC1(fd);
	return r;
}