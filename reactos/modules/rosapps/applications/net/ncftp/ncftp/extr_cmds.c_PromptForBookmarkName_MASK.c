#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dfltname ;
typedef  int /*<<< orphan*/  bmname ;
struct TYPE_5__ {int /*<<< orphan*/  host; } ;
struct TYPE_4__ {int /*<<< orphan*/  bookmarkName; } ;
typedef  TYPE_1__* BookmarkPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ gConn ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 

int
FUNC5(BookmarkPtr bmp)
{
	char dfltname[64];
	char bmname[64];

	FUNC0(dfltname, sizeof(dfltname), gConn.host);
	if (dfltname[0] == '\0') {
		(void) FUNC4("Enter a name for this bookmark: ");
	} else {
		(void) FUNC4("Enter a name for this bookmark, or hit enter for \"%s\": ", dfltname);
	}
	FUNC3(stdin);
	(void) FUNC1(bmname, sizeof(bmname), stdin);
	if (bmname[0] != '\0') {
		(void) FUNC2(bmp->bookmarkName, bmname);
		return (0);
	} else if (dfltname[0] != '\0') {
		(void) FUNC2(bmp->bookmarkName, dfltname);
		return (0);
	}
	return (-1);
}