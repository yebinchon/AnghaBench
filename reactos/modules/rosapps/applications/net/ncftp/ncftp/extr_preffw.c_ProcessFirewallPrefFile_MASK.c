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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 void* gDataPortMode ; 
 int /*<<< orphan*/  gFirewallExceptionList ; 
 int /*<<< orphan*/  gFirewallHost ; 
 int /*<<< orphan*/  gFirewallPass ; 
 unsigned int gFirewallPort ; 
 int gFirewallType ; 
 int /*<<< orphan*/  gFirewallUser ; 
 void* gFwDataPortMode ; 
 scalar_t__ FUNC4 (char) ; 
 void* kFallBackToSendPortMode ; 
 int kFirewallLastType ; 
 void* kPassiveMode ; 
 void* kSendPortMode ; 
 char* FUNC5 (char*,char*) ; 

void
FUNC6(FILE *fp)
{
	char line[256];
	char *tok1, *tok2;
	int n;

	/* Opened the firewall preferences file. */
	line[sizeof(line) - 1] = '\0';
	while (FUNC3(line, sizeof(line) - 1, fp) != NULL) {
		tok1 = FUNC5(line, " =\t\r\n");
		if ((tok1 == NULL) || (tok1[0] == '#'))
			continue;
		tok2 = FUNC5(NULL, "\r\n");
		if (tok2 == NULL)
			continue;
		if (FUNC0(tok1, "firewall-type")) {
			n = FUNC2(tok2);
			if ((n > 0) && (n <= kFirewallLastType))
				gFirewallType = n;
		} else if (FUNC0(tok1, "firewall-host")) {
			(void) FUNC1(gFirewallHost, tok2);
		} else if (FUNC0(tok1, "firewall-port")) {
			n = FUNC2(tok2);
			if (n > 0)
				gFirewallPort = (unsigned int) n;
		} else if (FUNC0(tok1, "firewall-user")) {
			(void) FUNC1(gFirewallUser, tok2);
		} else if (FUNC0(tok1, "firewall-pass")) {
			(void) FUNC1(gFirewallPass, tok2);
		} else if (FUNC0(tok1, "firewall-password")) {
			(void) FUNC1(gFirewallPass, tok2);
		} else if (FUNC0(tok1, "firewall-exception-list")) {
			(void) FUNC1(gFirewallExceptionList, tok2);
		} else if (FUNC0(tok1, "passive")) {
			if (FUNC0(tok2, "optional")) {
				gDataPortMode = gFwDataPortMode = kFallBackToSendPortMode;
			} else if (FUNC0(tok2, "on")) {
				gDataPortMode = gFwDataPortMode = kPassiveMode;
			} else if (FUNC0(tok2, "off")) {
				gDataPortMode = gFwDataPortMode = kSendPortMode;
			} else if ((int) FUNC4(tok2[0])) {
				gDataPortMode = gFwDataPortMode = FUNC2(tok2);
			}
		}
	}
}