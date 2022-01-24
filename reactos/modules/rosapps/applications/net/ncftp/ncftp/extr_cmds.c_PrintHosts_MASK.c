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
typedef  int /*<<< orphan*/  url ;
typedef  scalar_t__ sigproc_t ;
struct TYPE_4__ {char* bookmarkName; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ Bookmark ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  SIGPIPE ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int
FUNC8(void)
{
	FILE *bookmarks;
	FILE *pager;
	int nbm = 0;
	Bookmark bm;
	char url[128];
#ifdef SIGPIPE
	sigproc_t osigpipe;
#endif

	bookmarks = FUNC5(NULL);
	if (bookmarks == NULL)
		return (0);

#ifdef SIGPIPE
	osigpipe = (sigproc_t) NcSignal(SIGPIPE, SIG_IGN);
#endif
	pager = FUNC6();

	while (FUNC3(bookmarks, &bm) == 0) {
		nbm++;
		if (nbm == 1) {
			/* header */
			(void) FUNC7(pager, "--BOOKMARK----------URL--------------------------------------------------------\n");
		}
		FUNC0(&bm, url, sizeof(url));
		(void) FUNC7(pager, "  %-16s  %s\n", bm.bookmarkName, url);
	}

	FUNC2(pager);
	FUNC1(bookmarks);

#ifdef SIGPIPE
	(void) NcSignal(SIGPIPE, osigpipe);
#endif
	return (nbm);
}