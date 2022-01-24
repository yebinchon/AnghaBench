#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unoptstr ;
typedef  int /*<<< orphan*/  itempath ;
struct TYPE_26__ {int /*<<< orphan*/  serverType; } ;
struct TYPE_24__ {int /*<<< orphan*/ * vec; } ;
struct TYPE_25__ {TYPE_3__ fil; } ;
struct TYPE_23__ {TYPE_1__* first; } ;
struct TYPE_22__ {char* line; struct TYPE_22__* next; } ;
typedef  TYPE_1__* LinePtr ;
typedef  TYPE_2__ LineList ;
typedef  TYPE_3__* FileInfoListPtr ;
typedef  TYPE_3__ FileInfoList ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_6__*,char*,TYPE_2__*,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_3__*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const* const) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC13 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_6__ gConn ; 
 TYPE_5__* gLsCache ; 
 int /*<<< orphan*/  gRemoteCWD ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC18(const char *const item, int listmode, const char *const options, FILE *stream)
{
	char itempath[512];
	FileInfoList fil;
	FileInfoListPtr filp;
	LinePtr linePtr, nextLinePtr;
	LineList dirContents;
	int parsed;
	int linkedTo;
	int endChars;
	int rlisted;
	int opt;
	const char *cp;
	int sortBy;
	int sortOrder;
	int unknownOpts;
	char optstr[32];
	char unoptstr[32];
	int doNotUseCache;
	int wasInCache;
	int mlsd;
	int ci;

	FUNC3(&dirContents);
	FUNC2(&fil);

	sortBy = 'n';		/* Sort by filename. */
	sortOrder = 'a';	/* Sort in ascending order. */
	linkedTo = 0;
	endChars = (listmode == 'C') ? 1 : 0;
	unknownOpts = 0;
	FUNC17(unoptstr, 0, sizeof(unoptstr));
	unoptstr[0] = '-';
	doNotUseCache = 0;
	rlisted = 0;

	for (cp = options; *cp != '\0'; cp++) {
		opt = *cp;
		switch (opt) {
			case 't':
				sortBy = 't';		/* Sort by modification time. */
				break;
			case 'S':
				sortBy = 's';		/* Sort by size. */
				break;
			case 'r':
				sortOrder = 'd';	/* descending order */
				break;
			case 'L':
				linkedTo = 1;
				break;
			case 'f':
				doNotUseCache = 1;
				break;
			case 'F':
			case 'p':
				endChars = 1;
				break;
			case '1':
			case 'C':
			case 'l':
				listmode = opt;
				break;
			case '-':
				break;
			default:
				if (unknownOpts < ((int) sizeof(unoptstr) - 2))
					unoptstr[unknownOpts + 1] = opt;
				unknownOpts++;
				break;
		}
	}

	/* Create a possibly relative path into an absolute path. */
	FUNC9(itempath, sizeof(itempath), gRemoteCWD,
		(item == NULL) ? "." : item);

	if (unknownOpts > 0) {
		/* Can't handle these -- pass them through
		 * to the server.
		 */

		FUNC12(0, "ls caching not used because of ls flags: %s\n", unoptstr);
		optstr[0] = '-';
		optstr[1] = listmode;
		optstr[2] = '\0';
		(void) FUNC10(optstr, options);
		if ((FUNC1(&gConn, (item == NULL) ? "" : item, &dirContents, optstr, 1, 0)) < 0) {
			if (stream != NULL)
				(void) FUNC16(&stderr, "List failed.\n");
			return;
		}

		rlisted = 1;
		parsed = -1;
		wasInCache = 0;
		filp = NULL;
	} else if ((doNotUseCache != 0) || ((ci = FUNC7(itempath)) < 0)) {
		/* Not in cache. */
		wasInCache = 0;

		mlsd = 1;
		if ((FUNC1(&gConn, (item == NULL) ? "" : item, &dirContents, "-l", 1, &mlsd)) < 0) {
			if (stream != NULL)
				(void) FUNC16(&stderr, "List failed.\n");
			return;
		}

		rlisted = 1;
		filp = &fil;
		if (mlsd != 0) {
			parsed = FUNC14(filp, &dirContents);
			if (parsed < 0) {
				FUNC12(0, "UnMlsD: %d\n", parsed);
			}
		} else {
			parsed = FUNC13(filp, &dirContents, gConn.serverType);
			if (parsed < 0) {
				FUNC12(0, "UnLslR: %d\n", parsed);
			}
		}
		if (parsed >= 0) {
			FUNC15(filp);
			if (filp->vec == NULL) {
				if (stream != NULL)
					(void) FUNC16(&stderr, "List processing failed.\n");
				return;
			}
		}
	} else {
		filp = &gLsCache[ci].fil;
		wasInCache = 1;
		parsed = 1;
		FUNC12(0, "ls cache hit: %s\n", itempath);
	}

	if (rlisted != 0) {
		FUNC12(0, "Remote listing contents {\n");
		for (linePtr = dirContents.first;
			linePtr != NULL;
			linePtr = nextLinePtr)
		{
			nextLinePtr = linePtr->next;
			FUNC12(0, "    %s\n", linePtr->line);
		}
		FUNC12(0, "}\n");
	}

	if (parsed >= 0) {
		FUNC11(filp, sortBy, sortOrder);
		if (stream != NULL) {
			if (listmode == 'l')
				FUNC8(filp, endChars, linkedTo, stream);
			else if (listmode == '1')
				FUNC4(filp, endChars, stream);
			else
				FUNC5(filp, endChars, stream);
		}
		if (wasInCache == 0) {
			FUNC6(itempath, filp);
		}
	} else if (stream != NULL) {
		for (linePtr = dirContents.first;
			linePtr != NULL;
			linePtr = nextLinePtr)
		{
			nextLinePtr = linePtr->next;
			(void) FUNC16(stream, "%s\n", linePtr->line);
			FUNC12(0, "    %s\n", linePtr->line);
		}
	}

	FUNC0(&dirContents);
}