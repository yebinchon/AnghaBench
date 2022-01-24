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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(const char *const path)
{
	FILE *fp;
	char line[256];

	fp = FUNC2(path,
#if defined(__windows__) || defined(MSDOS)
		"rt"
#else
		"r"
#endif
	);
	if (fp != NULL) {
		FUNC4(line, 0, sizeof(line));
		while (FUNC1(line, sizeof(line) - 2, fp) != NULL) {
			FUNC3(line);
		}
		FUNC0(fp);
	}
}