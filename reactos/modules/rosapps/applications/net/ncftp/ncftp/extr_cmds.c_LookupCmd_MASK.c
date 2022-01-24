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
struct in_addr {int dummy; } ;
struct hostent {char** h_addr_list; char* h_name; char** h_aliases; } ;
typedef  int /*<<< orphan*/  ipStr ;
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hostent* FUNC1 (char const*,struct in_addr*) ; 
 int FUNC2 (int const,char const** const,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int gOptInd ; 
 int /*<<< orphan*/  gUnusedArg ; 

void
FUNC7(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	int i, j;
	struct hostent *hp;
	const char *host;
	char **cpp;
	struct in_addr ip_address;
	int shortMode, opt;
	char ipStr[16];

	FUNC0(gUnusedArg);
	shortMode = 1;

	FUNC3();
	while ((opt = FUNC2(argc, argv, "v")) >= 0) {
		if (opt == 'v')
			shortMode = 0;
		else {
			FUNC5(cmdp);
			return;
		}
	}

	for (i=gOptInd; i<argc; i++) {
		hp = FUNC1((host = argv[i]), &ip_address);
		if ((i > gOptInd) && (shortMode == 0))
			FUNC6(-1, "\n");
		if (hp == NULL) {
			FUNC6(-1, "Unable to get information about site %s.\n", host);
		} else if (shortMode) {
			FUNC4(ipStr, sizeof(ipStr), hp->h_addr_list, 0);
			FUNC6(-1, "%-40s %s\n", hp->h_name, ipStr);
		} else {
			FUNC6(-1, "%s:\n", host);
			FUNC6(-1, "    Name:     %s\n", hp->h_name);
			for (cpp = hp->h_aliases; *cpp != NULL; cpp++)
				FUNC6(-1, "    Alias:    %s\n", *cpp);
			for (j = 0, cpp = hp->h_addr_list; *cpp != NULL; cpp++, ++j) {
				FUNC4(ipStr, sizeof(ipStr), hp->h_addr_list, j);
				FUNC6(-1, "    Address:  %s\n", ipStr);
			}
		}
	}
}