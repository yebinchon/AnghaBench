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
struct TYPE_5__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  hasUTIME; int /*<<< orphan*/  hasPASV; int /*<<< orphan*/  hasMDTM; int /*<<< orphan*/  hasSIZE; int /*<<< orphan*/  port; int /*<<< orphan*/  acct; int /*<<< orphan*/  pass; int /*<<< orphan*/  user; int /*<<< orphan*/  host; } ;
struct TYPE_4__ {char* name; char* user; char* pass; char* acct; char* lastIP; int /*<<< orphan*/  hasUTIME; int /*<<< orphan*/  hasPASV; int /*<<< orphan*/  hasMDTM; int /*<<< orphan*/  hasSIZE; int /*<<< orphan*/  lastCall; int /*<<< orphan*/  port; int /*<<< orphan*/  dir; } ;
typedef  TYPE_1__* BookmarkPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ gConn ; 
 scalar_t__ gFirewallType ; 
 int /*<<< orphan*/  gRemoteCWD ; 
 int /*<<< orphan*/  gStartDir ; 
 scalar_t__ kFirewallNotInUse ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(BookmarkPtr bmp)
{
	char dir[160];

	(void) FUNC2(bmp->name, gConn.host);
	if ((FUNC1(gConn.user, "anonymous")) || (FUNC1(gConn.user, "ftp"))) {
		bmp->user[0] = '\0';
		bmp->pass[0] = '\0';
		bmp->acct[0] = '\0';
	} else {
		(void) FUNC2(bmp->user, gConn.user);
		(void) FUNC2(bmp->pass, gConn.pass);
		(void) FUNC2(bmp->acct, gConn.acct);
	}

	/* We now save relative paths, because the pathname in URLs are
	 * relative by nature.  This makes non-anonymous FTP URLs shorter
	 * because it doesn't have to include the pathname of their
	 * home directory.
	 */
	(void) FUNC2(dir, gRemoteCWD);
	FUNC0(bmp->dir, sizeof(bmp->dir), dir, gStartDir, FUNC3(gStartDir));
	bmp->port = gConn.port;
	(void) FUNC4(&bmp->lastCall);
	bmp->hasSIZE = gConn.hasSIZE;
	bmp->hasMDTM = gConn.hasMDTM;
	bmp->hasPASV = gConn.hasPASV;
	bmp->hasUTIME = gConn.hasUTIME;
	if (gFirewallType == kFirewallNotInUse)
		(void) FUNC2(bmp->lastIP, gConn.ip);
}