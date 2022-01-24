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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int HIST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 char** hist_buf ; 
 int hist_pos ; 

void
FUNC3(const char *const path)
{
	FILE *fp;
	const char *p;
	int i, j;

	fp = FUNC1(path,
#if defined(__windows__) || defined(MSDOS)
		"wt"
#else
		"w"
#endif
	);
	if (fp != NULL) {
		for (i=2; i<HIST_SIZE; i++) {
        		j = (hist_pos+i) % HIST_SIZE;
			p = hist_buf[j];
			if ((p == NULL) || (*p == '\0'))
				continue;
			FUNC2(fp, "%s\n", p);
		}
		FUNC0(fp);
	}
}