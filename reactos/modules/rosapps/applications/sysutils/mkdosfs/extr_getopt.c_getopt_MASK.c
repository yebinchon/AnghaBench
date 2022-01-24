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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char* const,int) ; 
 char* optarg ; 
 scalar_t__ opterr ; 
 int optind ; 
 int optopt ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC1 (char const*,char) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 size_t subopt ; 
 int suboptind ; 

int FUNC3(int argc, char *const argv[], const char * optstring)
{
	char *curopt;
	char *p;
	int cursubopt;

	if (suboptind == optind-1 && argv[suboptind][subopt] != '\0') {
		curopt = (char *)argv[suboptind];
	} else {
		curopt = (char *)argv[optind];
		if (curopt == NULL || curopt[0] != '-' || FUNC2(curopt, "-") == 0)
			return -1;
		suboptind = optind;
		subopt = 1;
		optind++;
		if (FUNC2(curopt, "--") == 0)
			return -1;
	}
	cursubopt = subopt++;
	if ((p = FUNC1(optstring, curopt[cursubopt])) == NULL) {
		optopt = curopt[cursubopt];
		if (opterr)
			FUNC0(stderr, "%s: illegal option -- %c\n", argv[0], optopt);
		return '?';
	}
	if (p[1] == ':') {
		if (curopt[cursubopt+1] != '\0') {
			optarg = curopt+cursubopt+1;
			suboptind++;
			return p[0];
		}
		if (argv[optind] == NULL) {
			optopt = p[0];
			if (opterr)
				FUNC0(stderr, "%s: option requires an argument -- %c\n", argv[0], optopt);
			if (*optstring == ':')
				return ':';
			return '?';
		}
		optarg = argv[optind++];
	}
	return p[0];
}