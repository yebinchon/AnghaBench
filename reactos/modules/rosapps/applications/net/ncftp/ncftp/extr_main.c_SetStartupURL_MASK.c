#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  urlfile ;
struct TYPE_7__ {char const* const name; char const* const user; char const* const pass; char const* const acct; int /*<<< orphan*/  port; int /*<<< orphan*/  hasUTIME; int /*<<< orphan*/  hasPASV; int /*<<< orphan*/  hasMDTM; int /*<<< orphan*/  hasSIZE; } ;
struct TYPE_6__ {char* host; char* user; char* pass; char* acct; char* firewallHost; char* firewallUser; char* firewallPass; void* firewallPort; void* firewallType; int /*<<< orphan*/  port; int /*<<< orphan*/  hasUTIME; int /*<<< orphan*/  hasPASV; int /*<<< orphan*/  hasMDTM; int /*<<< orphan*/  hasSIZE; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (char*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const* const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__ gBm ; 
 TYPE_1__ gConn ; 
 int /*<<< orphan*/  gFirewallExceptionList ; 
 char const* const gFirewallHost ; 
 char const* const gFirewallPass ; 
 void* gFirewallPort ; 
 void* gFirewallType ; 
 char const* const gFirewallUser ; 
 int gLoadedBm ; 
 int /*<<< orphan*/  gStartupURLCdList ; 
 int gURLMode ; 
 int kMalformedURL ; 
 int kNotURL ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC7(const char *const urlgiven)
{
	int rc;
	char url[256];
	char urlfile[128];

	gLoadedBm = 0;
	(void) FUNC3(url, urlgiven);

	rc = FUNC0(&gConn, url, &gStartupURLCdList, urlfile, sizeof(urlfile));
	if (rc == kMalformedURL) {
		(void) FUNC6(stderr, "Malformed URL: %s\n", url);
		FUNC5(1);
	} else if (rc == kNotURL) {
		/* This is what should happen most of the time. */
		(void) FUNC3(gConn.host, urlgiven);
		gURLMode = 2;
		if (FUNC1(gConn.host, &gBm) >= 0) {
			gLoadedBm = 1;
			(void) FUNC3(gConn.host, gBm.name);
			(void) FUNC3(gConn.user, gBm.user);
			(void) FUNC3(gConn.pass, gBm.pass);
			(void) FUNC3(gConn.acct, gBm.acct);
			gConn.hasSIZE = gBm.hasSIZE;
			gConn.hasMDTM = gBm.hasMDTM;
			gConn.hasPASV = gBm.hasPASV;
			gConn.hasUTIME = gBm.hasUTIME;
			gConn.port = gBm.port;
		} else {
			FUNC4(&gBm);
		}

		if (FUNC2(gConn.host, gFirewallType, gFirewallExceptionList) != 0) {
			gConn.firewallType = gFirewallType;
			(void) FUNC3(gConn.firewallHost, gFirewallHost);
			(void) FUNC3(gConn.firewallUser, gFirewallUser);
			(void) FUNC3(gConn.firewallPass, gFirewallPass);
			gConn.firewallPort = gFirewallPort;
		}
	} else {
		/* URL okay */
		if (urlfile[0] != '\0') {
			/* It was obviously not a directory */
			(void) FUNC6(stderr, "Use ncftpget or ncftpput to handle file URLs.\n");
			FUNC5(1);
		}
		gURLMode = 1;
		if (FUNC2(gConn.host, gFirewallType, gFirewallExceptionList) != 0) {
			gConn.firewallType = gFirewallType;
			(void) FUNC3(gConn.firewallHost, gFirewallHost);
			(void) FUNC3(gConn.firewallUser, gFirewallUser);
			(void) FUNC3(gConn.firewallPass, gFirewallPass);
			gConn.firewallPort = gFirewallPort;
		}
	}
}