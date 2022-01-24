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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  bookmark ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAXNAMELEN ; 
 int /*<<< orphan*/  ZFS_IOC_REDACT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(const char *snapshot1, const char *snapshot2)
{
	nvlist_t *required = FUNC4();
	nvlist_t *snapnv = FUNC4();
	char bookmark[MAXNAMELEN + 32];

	FUNC3(required, "bookname", "testbookmark");
	FUNC1(snapnv, snapshot2);
	FUNC2(required, "snapnv", snapnv);

	FUNC0(ZFS_IOC_REDACT, snapshot1, required, NULL, 0);

	FUNC5(snapnv);
	FUNC5(required);

	FUNC8(bookmark, snapshot1, sizeof (bookmark));
	*FUNC6(bookmark, '@') = '\0';
	FUNC7(bookmark, "#testbookmark", sizeof (bookmark) -
	    FUNC9(bookmark));
	FUNC10(bookmark);
}