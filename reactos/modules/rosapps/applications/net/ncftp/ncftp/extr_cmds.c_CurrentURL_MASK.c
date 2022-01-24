#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bm ;
struct TYPE_6__ {char* host; char* user; char* pass; char* acct; int /*<<< orphan*/  port; } ;
struct TYPE_5__ {char* name; char* user; char* pass; char* acct; int /*<<< orphan*/  dir; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ Bookmark ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 TYPE_3__ gConn ; 
 char* gRemoteCWD ; 
 int /*<<< orphan*/  gStartDir ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(char *dst, size_t dsize, int showpass)
{
	Bookmark bm;
	char dir[160];

	FUNC4(&bm, 0, sizeof(bm));
	(void) FUNC3(bm.name, gConn.host);
	if ((gConn.user[0] != '\0') && (! FUNC2(gConn.user, "anonymous")) && (! FUNC2(gConn.user, "ftp"))) {
		(void) FUNC3(bm.user, gConn.user);
		(void) FUNC3(bm.pass, (showpass == 0) ? "PASSWORD" : gConn.pass);
		(void) FUNC3(bm.acct, gConn.acct);
	}

	bm.port = gConn.port;

	/* We now save relative paths, because the pathname in URLs are
	 * relative by nature.  This makes non-anonymous FTP URLs shorter
	 * because it doesn't have to include the pathname of their
	 * home directory.
	 */
	(void) FUNC3(dir, gRemoteCWD);
	FUNC0(bm.dir, sizeof(bm.dir), dir, gStartDir, FUNC5(gStartDir));

	FUNC1(&bm, dst, dsize);
}